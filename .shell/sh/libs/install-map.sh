#!/bin/bash
. ./.shell/sh/utils/colors.sh

MapScss() {
    mkdir ./src/app/components
    mkdir ./src/app/components/map
    setColor green
    echo "[+] src/app/components/map/map.scss"
    resetColor

    echo "@import '~leaflet/dist/leaflet.css';

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
}" > ./src/app/components/map/map.scss
}

SetupLeaflet(){
    setColor green-l
    echo "[+] node_modules: leaflet"
    resetColor
    npm install leaflet --save-dev
    cp ./.shell/blueprints/map-leaflet.js > ./src/app/components/map/map.js
    setColor green
    echo "[+] src/components/map/map.js"
    resetColor
}
SetupOpenLayers(){
    setColor green-l
    echo "[+] node_modules: openlayers"
    resetColor
    npm install openlayers --save-dev
    cp ./.shell/blueprints/map-openlayers.js > ./src/app/components/map/map.js
    setColor green
    echo "[+] src/components/map/map.js"
    resetColor
}
MapMenu() {
    echo -ne "
    choose a map:

    o)    open-layers
    l)    leaflet
    
    choice: "

    read mapType
    case "$mapType" in
        o)  SetupOpenLayers;;
        l)  SetupLeaflet;;
        --) shift;;
        *)  setColor orange
            echo "the option '$mapType' does not exist
            "
            resetColor
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
    setColor green
    echo "[+] src/components/map/map.js"
    resetColor
    cp ./.shell/blueprints/map-leaflet.ts > ./src/app/components/map/map.component.ts
}

FrameworkMenu() {
    echo -ne "Add leaflet map component for:
    a)    Angular 2
    r)    React
    
choose: "
    resetColor

    read framework
    case "$framework" in
            a)  AngularMap;;
            r)  ReactMap;;
            --) shift;;
            *)  setColor orange
                echo "the option '$framework' does not exist
                "
                resetColor
                FrameworkMenu;;
    esac
    shift
}

# FrameworkMenu
MapMenu