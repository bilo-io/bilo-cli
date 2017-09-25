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
    server)        starts elasticsearch server in path: ~/Dev/es/elasticsearch-{version}/bin/elasticsearch
"
}
Action() {
        arg=$1
        case "$arg" in
                # react scripts
                bulk)       
                    esUrl="http://localhost:9200"
                    currentDir=$(pwd)
                    echoColor 'cyan-l' "elastic bulk insert starting:"
                    
                    echoColorNE 'yellow' "es_index: "
                    read esIndex
                    echoColorNE 'yellow' "rel path: "
                    read jsonFilePath

                    echoColor 'green-l' " - url:    $esUrl/$esIndex/_bulk \n - file:   $currentDir$jsonFilePath
                    "

                    echoColor 'green' " generating mapping: "

                    mappingFile=$(cat $jsonFilePath.mapping.json)
                    echoColor 'purple' "Mapping: $mappingFile"
                    curl -XPUT $esUrl/$esIndex -d $mappingFile

                    # curl -XPOST localhost:9200/$esIndex/_bulk --data-binary @$jsonFilePath.json \
                        # -H "Content-Type: application/x-ndjson"
                    # echo $mappingFile
                    echoColor 'cyan-l' " => elastic bulk import: DONE "
                    ;;
                server)     
                    echoColor 'cyan-l' "starting elasticsearch server"; 
                    cd ~/Dev/es/
                    ls -l 
                    echoColorNE 'yellow' "which version? (see listed versions above, e.g.: 5.6.0 )"
                    echoColo "version: elasticsearch-"
                    read esVersion
                    cd ./elasticsearch-$esVersion/
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