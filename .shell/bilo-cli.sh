#!/bin/bash
. ./.shell/sh/utils/colors.sh

Docs() {
    setColor cyan
    echo "
______ ___________                  __________ 
___  /____(_)__  /_____       _________  /__(_)
__  __ \_  /__  /_  __ \_______  ___/_  /__  / 
_  /_/ /  / _  / / /_/ //_____/ /__ _  / _  /  
/_.___//_/  /_/  \____/       \___/ /_/  /_/   "

resetColor
echo "Use this CLI to rapidly setup frontend and backend projects!
------------------------------------------------------------
    possible console commands:"
setColor orange
echo "
        b | build)          builds src folder using webpack
        c | clean)          removes folders: node_modules, artifact & dist
        d | deploy)         deploys production package locally"
setColor cyan
echo "
        webapp)             initializes webapp with NodeJS & SASS
        webapi)             initializes webapi with NodeJS & express"
setColor green
echo "        
        express)            adds express to webapp
        react)              adds react to webapp
        webpack)            adds Webpack to webapp
"
resetColor
echo -ne "Enter command: "
}
Action() {
        arg=$1
        echo "$arg"
        case "$arg" in
                
                h|help) ShowMenu;;
                # CI & Deployments
                b|build)    bash ./.shell/sh/tasks/_build.sh;;
                c|clean)    bash ./.shell/sh/tasks/_clean.sh;;
                d|deploy)   bash ./.shell/sh/tasks/_deploy.sh;;
                # Project Templates
                webapp)     bash ./.shell/sh/create-webapp.sh;;
                webapi)     bash ./.shell/sh/create-webapi.sh;;
                # Libraries & Frameworks
                express)    bash ./.shell/sh/libs/install-express.sh;;
                ng2)        bash ./.shell/sh/libs/install-ng2.sh;;
                react)      bash ./.shell/sh/libs/install-react.sh;;
                webpack)    bash ./.shell/sh/libs/install-webpack.sh;;
                leaflet)    bash ./.shell/sh/libs/install-leaflet.sh;;
                openlayers) bash ./.shell/sh/libs/install-openlayers.sh;;

                --) shift;;  # no more options
                *) 
                    setColor orange
                    echo "The option: '$arg' does not exist ... exiting"
                    resetColor
                    exit 0;; # not option, its some argument
        esac
        shift
}

ShowMenu() {
    Docs
    resetColor

    if [ $# -gt 0 ]; then
        Action $1
    else
        read userCommand
        Action $userCommand
    fi
}

ShowMenu $1