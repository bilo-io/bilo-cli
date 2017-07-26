#!/bin/bash
bash ./scripts/sh/clean.sh

delete_all() {
    rm -rf \
    src \
    .babelrc \
    package.json \
    webpack.config.js  \
    README_default.md \
}

echo "WARNING: This will DELETE all src files!!"

# read -p "... continue ?? (y/n)? " answer
# case ${answer:0:1} in
#     y|Y )
#         echo Yes
#     ;;
#     * )
#         echo No
#     ;;
# esac