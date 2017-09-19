#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh
#http://www.kammerl.de/ascii/AsciiSignature.php

Docs() {
    # clear
    echoColor 'cyan' "
                     __ 
  _______ ___  _____/ /_
 / __/ -_) _ \/ __/ __/
/_/  \__/\_,_/\__/\__/ 
"
echo "commands: "
echoColor 'cyan-l' "
    init)          creates react app with Redux, Webpack, Express & SASS
    component)     removes: node_modules, artifact & dist
    container)     create a basic (named) component (that is stateless)
    data)          create (global) data resource that is accessible from all pages
    page)          create a redux linked (named) page (that is stateful, i.e. uses redux)
"
}
Action() {
        arg=$1
        case "$arg" in
                # react scripts
                init)       bash /usr/local/bin/.shell/sh/frameworks/react/_init.sh ;;
                component)  bash /usr/local/bin/.shell/sh/frameworks/react/add-component.sh;;
                container)  bash /usr/local/bin/.shell/sh/frameworks/react/add-container.sh;;
                data)       bash /usr/local/bin/.shell/sh/frameworks/react/add-data.sh;;
                page)       bash /usr/local/bin/.shell/sh/frameworks/react/add-page.sh;;
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

action=$1
Start $action