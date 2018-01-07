#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh
LogOptions() {
  echo "choose component type:
  c) class component
  f) function component
  h) higher order component
  "
}
LogOptions
read componentType
echo "componentType: $componentType"

blueprints_react="/usr/local/bin/.shell/blueprints/react"

echo -ne "name:"
read name
path="./src/app/components/$name"
mkdir $path
echoColor 'green-l' "[+] $path"

case "$componentType" in
  c)    cat $blueprints_react/component-class.js >> $path/index.js
        echoColor 'green-l' "[+] class component: $name"
        ;;
  f)    cat $blueprints_react/component-function.js >> $path/index.js
        echoColor 'green-l' "[+] function component: $name"
        ;;
  h)    cat $blueprints_react/component-hoc.js >> $path/index.js
        echoColor 'green-l' "[+] higher order component: $name"
        ;;
  --) shift;;  # no more options
                *) 
                    setColor orange
                    echo "the option '$arg' does not exist ... type 'c' , 'f' or 'h'"
                    resetColor
                    exit 0;; # not option, its some argument
esac

cat $blueprints_react/component.js >> $path/index.js
# sed "s/MyComponent/$name/g" $path/index.js
echoColor 'green' "[+] - component.js"

cat $blueprints_react/style.scss >> $path/style.scss
echoColor 'green' "[+] - style.scss"