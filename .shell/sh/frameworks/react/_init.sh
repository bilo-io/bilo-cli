#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

echo "initialising react app";
bash /usr/local/bin/.shell/sh/create-webapp.sh ;
bash /usr/local/bin/.shell/sh/libs/install-express.sh; 
bash /usr/local/bin/.shell/sh/libs/install-react.sh;
bash /usr/local/bin/.shell/sh/libs/install-redux.sh;
bash /usr/local/bin/.shell/sh/libs/install-webpack.sh;