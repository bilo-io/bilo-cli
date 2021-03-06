#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

echoColor 'green-l' "
    nginx -s {signal}
"

echoColor 'green' "
  {signal} can be one these:

  - reload    reload the configuration file
  - reopen    reopen log files
  - stop      shut down immediately
  - quit      shot down gracefully

docs: https://www.nginx.com/resources/admin-guide/processes-and-runtime-control/
"


echoColor 'cyan-l' "
nginx installation
"
nginx -v
echoColor 'cyan-l' "
nginx config (/usr/local/etc/nginx/nginx.conf)
"
cat /usr/local/etc/nginx/nginx.conf