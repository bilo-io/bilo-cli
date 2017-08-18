#!/bin/bash
. ./.shell/sh/utils/colors.sh

MapScss() {
    mkdir ./src/app/components
    mkdir ./src/app/components/map
    setColor green
    echo "[+] src/app/components/map/map.scss"
    resetColor

    echo "@import '~leaflet/dist/leaflet.css';" > ./src/app/components/map/map.scss

echo "
.map-container {
    position: relative;
    background: grey;
    width: 100%;
    height: 100%;
}

.map-component {
    position: absolute;
    background: rgba(#00adee, 0.1);
    width: 100%;
    height: 100%;
}" >> ./src/app/components/map/map.scss
}

SetupLeaflet(){
    echoColor 'green-l' "[+] node_modules: leaflet"
    npm install leaflet --save-dev
    mkdir ./src/app/components/map
    cp ./.shell/blueprints/map.leaflet.js > ./src/app/components/map/map.js
    echoColor 'green' "[+] src/components/map/map.js"
}
SetupOpenLayers(){
    
    echoColor 'green-l' "[+] node_modules: openlayers"
    npm install openlayers --save-dev
    mkdir ./src/app/components/map
    cp ./.shell/blueprints/map.openlayers.js > ./src/app/components/map/map.js
    echoColor 'green' "[+] src/components/map/map.js"
}
MapMenu() {
    echo -ne "
    choose a map:

    o)    open-layers
    l)    leaflet
    
    choice: "

    read mapType
    case "$mapType" in
        o|openlayers)   SetupOpenLayers;;
        l|leaflet)      SetupLeaflet;;
        --) shift;;
        *)  echoColor 'orange' "the option '$mapType' does not exist"
            MapMenu;;
    esac
    shift
}

ReactMap() {
    MapScss
    resetColor
}

AngularMap() {
    MapScss
    echoColor 'green' "[+] src/components/map/map.js"
    cp ./.shell/blueprints/map-leaflet.ts > ./src/app/components/map/map.component.ts
}

FrameworkMenu() {
    echo -ne "Add leaflet map component for:
    a)    Angular 2
    r)    React
    
choose: "

    read framework
    case "$framework" in
            a)  AngularMap;;
            r)  ReactMap;;
            --) shift;;
            *)  echo 'orange' "the option '$framework' does not exist"
                FrameworkMenu;;
    esac
    shift
}

MapMenu