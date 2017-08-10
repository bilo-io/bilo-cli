#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

Docs() {
    clear
    echoColor 'cyan' "
______ ___________                  __________ 
___  /____(_)__  /_____       _________  /__(_)
__  __ \_  /__  /_  __ \_______  ___/_  /__  / 
_  /_/ /  / _  / / /_/ //_____/ /__ _  / _  /  
/_.___//_/  /_/  \____/       \___/ /_/  /_/   

Use this CLI to rapidly setup frontend and backend projects!
------------------------------------------------------------
    
cli commands:"
echoColor 'purple' "
    b | build)          builds src folder using webpack
    c | clean)          removes: node_modules, artifact & dist
    d | deploy)         deploys production package locally"
echoColor 'cyan' "
    webapp)             initializes webapp with NodeJS & SASS
    webapi)             initializes webapi with NodeJS & express"
echoColor 'green' "        
    map)                adds leaflet | openlayers to webapp
    react)              adds react to webapp
    express)            adds express to webapp
    webpack)            adds Webpack to webapp
"
echo -ne "enter command: "
}
Action() {
        arg=$1
        case "$arg" in
                
                h|help) Start;;
                # CI & Deployments
                b|build)    bash /usr/local/bin/.shell/sh/tasks/build.sh;;
                c|clean)    bash /usr/local/bin/.shell/sh/tasks/clean.sh;;
                d|deploy)   bash /usr/local/bin/.shell/sh/tasks/deploy.sh;;
                erase)     bash /usr/local/bin/.shell/sh/tasks/_delete.sh;;
                # Project Templates
                wa|wapp|webapp)     bash /usr/local/bin/.shell/sh/create-webapp.sh;;
                ws|wapi|webapi)     bash /usr/local/bin/.shell/sh/create-webapi.sh;;
                # Libraries & Frameworks
                map)    bash /usr/local/bin/.shell/sh/libs/install-map.sh;;
                ng2)        bash /usr/local/bin/.shell/sh/libs/install-ng2.sh;;
                react)      bash /usr/local/bin/.shell/sh/libs/install-react.sh;;
                express)    bash /usr/local/bin/.shell/sh/libs/install-express.sh;;
                webpack)    bash /usr/local/bin/.shell/sh/libs/install-webpack.sh;;

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

Start $1