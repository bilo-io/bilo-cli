#!/bin/bash
#docs: https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux

BLACK='\e[0;30m'
RED='\e[0;31m'
RED_LIGHT='\e[1;31m'
GREEN='\e[0;32m'
GREEN_LIGHT='\e[1;32m'
ORANGE='\e[0;33m'
YELLOW='\e[1;33m'
BLUE='\e[0;34m'
BLUE_LIGHT='\e[1;34m'
PURPLE='\e[0;35m'
PURPLE_LIGHT='\e[1;35m'
CYAN='\e[0;36m'
CYAN_LIGHT='\e[1;36m'
GRAY='\e[0;37m'
WHITE='\e[1;37m'

YELLOW='\e[1;33m'
NONE='\e[0;0m'

DOCS_COLORS="
Color Codes:${WHITE}

    Black        0;30     Dark Gray     1;30${RED}
    Red          0;31     ${RED_LIGHT}Light Red     1;31${GREEN}
    Green        0;32     ${GREEN_LIGHT}Light Green   1;32${ORANGE}
    Orange       0;33     ${YELLOW}Yellow        1;33${BLUE}
    Blue         0;34     Light Blue    1;34${PURPLE}
    Purple       0;35     Light Purple  1;35${CYAN}
    Cyan         0;36     Light Cyan    1;36${GRAY}
    Light Gray   0;37     White         1;37
"

function assignColor {
    printf $1
}

function setColor {
    echo -e "Setting Color: $1"
    case $1 in
        "black") assignColor $BLACK;;
        "red") assignColor $RED;;
        "green") assignColor $GREEN;;
        "orange") assignColor $ORANGE;;
        "blue") assignColor $BLUE;;
        "purple") assignColor $PURPLE;;
        "cyan") assignColor $CYAN;;
        "green") assignColor $GREEN;;
        "white") assignColor $WHITE;;
        "*")
            assignColor red 
            echo -e "$1 is not a registered color"
            resetColor
            exit 1
            ;;
    esac
}

function resetColor {
    echo -e "${WHITE}"
}

function docsColors {
    echo "Color $1"
    printf "$1"
    resetColor
}