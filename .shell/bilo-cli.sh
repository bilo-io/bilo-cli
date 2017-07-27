#!/bin/bash
. ./.shell/sh/utils/colors.sh

UTIL_NAME='
______ ___________                  __________ 
___  /____(_)__  /_____       _________  /__(_)
__  __ \_  /__  /_  __ \_______  ___/_  /__  / 
_  /_/ /  / _  / / /_/ //_____/ /__ _  / _  /  
/_.___//_/  /_/  \____/       \___/ /_/  /_/                                                             
'
WELCOME_MESSAGE='
Use this CLI to rapidly setup frontend and backend projects!
------------------------------------------------------------'
HELP_MENU='
    possible console commands:
        
        a | app)            initializes webapp with NodeJS & SASS
        b | build)          builds src folder using webpack
        c | clean)          removes folders: node_modules, artifact & dist
        d | deploy)         deploys production package locally

        express)            adds express to webapp
        react)              adds react to webapp
        webpack)            adds Webpack to webapp

Enter command: '
Docs() {
    setColor cyan
    echo "$UTIL_NAME"

    setColor orange
    echo "$WELCOME_MESSAGE"

    setColor white
    echo -ne "$HELP_MENU"
}
Menu() {
        arg=$1
        echo "$arg"
        case "$arg" in
                
                h|help) Docs;;
                # CI & Deployments
                b|build)    bash ./.shell/sh/_build.sh;;
                c|clean)    bash ./.shell/sh/_clean.sh;;
                d|deploy)   bash ./.shell/sh/_deploy.sh;;
                # Project Templates
                webapp)     bash ./.shell/sh/_create-webapp.sh;;
                webapi)     bash ./.shell/sh/_create-webapi.sh;;
                # Libraries & Frameworks
                express)    bash ./.shell/sh/install-express.sh;;
                ng2)        bash ./shell/sh/install-ng2.sh;;
                react)      bash ./.shell/sh/install-react.sh;;
                webpack)    bash ./.shell/sh/install-webpack.sh;;
                leaflet)    bash ./.shell/sh/install-leaflet.sh;;
                openlayers) bash ./.shell/sh/install-openlayers.sh;;

                --) shift;;  # no more options
                *) 
                    setColor orange
                    echo "The option: '$arg' does not exist ... exiting"
                    resetColor
                    exit 0;; # not option, its some argument
        esac
        shift
}

Docs
resetColor

if [ $# -gt 0 ]; then
    Menu $1
else
    read userCommand
    Menu $userCommand
fi
# while [ $# -gt 0 ]
# do
# done
