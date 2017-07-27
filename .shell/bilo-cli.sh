#!/bin/bash
. ./.shell/sh/utils/colors.sh

Docs() {
    clear
    setColor cyan
    echo "
______ ___________                  __________ 
___  /____(_)__  /_____       _________  /__(_)
__  __ \_  /__  /_  __ \_______  ___/_  /__  / 
_  /_/ /  / _  / / /_/ //_____/ /__ _  / _  /  
/_.___//_/  /_/  \____/       \___/ /_/  /_/   "

resetColor
echo "
Use this CLI to rapidly setup frontend and backend projects!
------------------------------------------------------------
    
cli commands:"
setColor purple
echo "
    b | build)          builds src folder using webpack
    c | clean)          removes: node_modules, artifact & dist
    d | deploy)         deploys production package locally"
setColor cyan
echo "
    webapp)             initializes webapp with NodeJS & SASS
    webapi)             initializes webapi with NodeJS & express"
setColor green
echo "        
    map)                adds leaflet | openlayers to webapp
    react)              adds react to webapp
    express)            adds express to webapp
    webpack)            adds Webpack to webapp
"
resetColor
echo -ne "enter command: "
}
Action() {
        arg=$1
        case "$arg" in
                
                h|help) Start;;
                # CI & Deployments
                b|build)    bash ./.shell/sh/tasks/build.sh;;
                c|clean)    bash ./.shell/sh/tasks/clean.sh;;
                d|deploy)   bash ./.shell/sh/tasks/deploy.sh;;
                erase)     bash ./.shell/sh/tasks/_delete.sh;;
                # Project Templates
                wa|wapp|webapp)     bash ./.shell/sh/create-webapp.sh;;
                ws|wapi|webapi)     bash ./.shell/sh/create-webapi.sh;;
                # Libraries & Frameworks
                map)    bash ./.shell/sh/libs/install-map.sh;;
                ng2)        bash ./.shell/sh/libs/install-ng2.sh;;
                react)      bash ./.shell/sh/libs/install-react.sh;;
                express)    bash ./.shell/sh/libs/install-express.sh;;
                webpack)    bash ./.shell/sh/libs/install-webpack.sh;;

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