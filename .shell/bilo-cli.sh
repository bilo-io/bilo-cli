#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

cliVersion="0.0.1"

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
    
cli misc:"
echoColor 'yellow' "
    -d|--delete)         delete bilo-cli
    -h|--help)           shows help menu
    -i|--install)        installs cli from (src: ~/Midnite/bilo-cli/)
    -u|--update)         update cli: get latest source and install
    -v|--version)        show version of bilo-cli
    -k|--kill)           kill process running on specified port
"
echo "cli commands:"
echoColor 'purple' "
    b | build)          builds src folder using webpack
    c | clean)          removes: node_modules, artifact & dist
    d | deploy)         deploys production package locally"
echoColor 'cyan' "
    webapp)             initializes webapp with NodeJS & SASS
    webapi)             initializes webapi with NodeJS & express"
echoColor 'green' "        
    elastic)            elasticsearch cli utility ( bulk import, start server, etc.)
    nginx)              shows nginx help
    react)              react.js cli utility (init app, add files, etc.)
"
echo -ne "enter command: "
}
Action() {
        arg=$1
        action=$2
        case "$arg" in
                -h|--help)     Start;;

                -d|--delete)    bash ~/Midnite/bilo-cli/.shell/delete-cli.sh;;
                -i|--install)    bash ~/Midnite/bilo-cli/.shell/install-cli.sh;;
                -u|--update)    bash ~/Midnite/bilo-cli/.shell/update-cli.sh;;
                -v|--version)  echoColor 'cyan-l' "v$cliVersion";;
                -k|--kill)      bash /usr/local/bin/.shell/sh/tasks/kill.sh "$action";;

                # CI & Deployments
                b|build)    bash /usr/local/bin/.shell/sh/tasks/build.sh;;
                c|clean)    bash /usr/local/bin/.shell/sh/tasks/clean.sh;;
                d|deploy)   bash /usr/local/bin/.shell/sh/tasks/deploy.sh;;
                erase)     bash /usr/local/bin/.shell/sh/tasks/_delete.sh;;
                # Project Templates
                wa|wapp|webapp)     bash /usr/local/bin/.shell/sh/create-webapp.sh;;
                ws|wapi|webapi)     bash /usr/local/bin/.shell/sh/create-webapi.sh;;
                # Frameworks
                ng2)        bash /usr/local/bin/.shell/sh/libs/install-ng2.sh;;
                nginx)      bash /usr/local/bin/.shell/sh/menus/nginx-menu.sh;;
                react)      bash /usr/local/bin/.shell/sh/menus/react-menu.sh "$action";;
                elastic)    bash /usr/local/bin/.shell/sh/menus/elastic-menu.sh "$action";;

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
        Action $1 $2
    else
        Docs
        resetColor
        read userCommand
        Action $userCommand
    fi
}

Start $1 $2
