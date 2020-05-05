#!/bin/bash
webhook="https://hooks.slack.com/services/**"

function slack_notice() {
    status="_updated!"
    mention="<!here>"
    data="$mention\n --- Status: $status\n something messages"
    message="{\"text\":\"${data}\"}"
    head="Content-type: application/json"
    curl -X POST -H '${head}' --data "${message}" ${webhook}
}

log=update.log

//something 
//curl -s  URL | iconv -f sjis -t UTF8 | grep "hoge" >$log
//grep "piyo" $log > /dev/null 2>&1

if [ "$?" != 0 ]; then
    slack_notice
  else
   exit 0
fi
