#!/bin/bash
. ./.shell/sh/_colors.sh
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
function InitApp() {
    # setColor cyan-l
    # echo " => init-app"
    bash ./.shell/sh/init-app.sh
}
InitExpress() {
    # setColor cyan-l
    # echo " => init-express"
    bash ./.shell/sh/init-express.sh
}
InitReact() {
    # setColor cyan-l
    # echo " => init-react"
    bash ./.shell/sh/init-react.sh        
}
InitWebpack() {
    # setColor cyan-l
    # echo " => init-webpack"
    bash ./.shell/sh/init-webpack.sh
}
Menu() {
        arg=$1
        echo "$arg"
        case "$arg" in
                -h|-help) clear; echo "$usage" ;;
                -v|-version) clear; echo $atlasVersion;;
                h|help) Docs;;
                
                a|app) InitApp;;
                b|build) bash ./.shell/sh/build.sh;;
                c|clean) bash ./.shell/sh/clean.sh;;
                d|deploy) bash ./.shell/sh/deploy.sh;;

                express) InitExpress;;
                react) InitReact;;
                webpack) InitWebpack;;

                --) shift;;  # no more options
                *) exit 0;; # not option, its some argument
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
