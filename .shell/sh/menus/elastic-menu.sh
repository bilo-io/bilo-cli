#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh
#http://www.kammerl.de/ascii/AsciiSignature.php

Docs() {
    # clear
    echoColor 'cyan' "
    *** ElasticSearch Utility ***
"
echo "commands: "
echoColor 'cyan-l' "
    index)         creates react app with Redux, Webpack, Express & SASS
    bulk)          bulk api: specify relative path to file containing bulk json instructions
    server)        starts elasticsearch server in path: ~/Dev/elasticsearch5.6.0/bin/elasticsearch
"
}
Action() {
        arg=$1
        case "$arg" in
                # react scripts
                bulk)       bash /usr/local/bin/.shell/sh/frameworks/react/_init.sh ;;
                server)     
                    echoColor 'cyan-l' "starting elasticsearch server"; 
                    echoColor 'yellow' "Version? "
                    read esVersion
                    ls -l "~/Dev/es/elasticsearch-$esVersion/" 
                    pwd; 
                    ./bin/elasticsearch;;
                # default handlers
                h|help)     Start;;
                --) shift;;  # no more options
                *) 
                    setColor orange
                    echo "the option '$arg' does not exist ... exiting"
                    resetColor
                    exit 0;; # not option, its some argument
        esac
        shift
}

Start() {
    if [ $# -gt 0 ]; then
        Action $1
    else
        Docs
        resetColor
        read userCommand
        Action $userCommand
    fi
}

# cat file > 
# curl -XPOST 'localhost:9200/_bulk?pretty' -H 'Content-Type: application/json' -d'
# { "index" : { "_index" : "test", "_type" : "type1", "_id" : "1" } }
# { "field1" : "value1" }
# { "delete" : { "_index" : "test", "_type" : "type1", "_id" : "2" } }
# { "create" : { "_index" : "test", "_type" : "type1", "_id" : "3" } }
# { "field1" : "value3" }
# { "update" : {"_id" : "1", "_type" : "type1", "_index" : "test"} }
# { "doc" : {"field2" : "value2"} }
# '
action=$1
Start $action