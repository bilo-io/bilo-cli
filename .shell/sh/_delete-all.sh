#!/bin/bash
bash ./.shell/sh/clean.sh

delete_all() {
    rm -rf \
    src \
    .babelrc \
    package.json \
    webpack.config.js  \
    README_default.md \
}