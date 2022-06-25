#!/bin/bash
#自分にとってあったら便利だなと思う shell script をコードする
#https://api.slack.com/messaging/webhooksで Incoming WebhooksのユニークURL設定「作成必須」
usage()  
{  
  echo "Usage: $0 filenameに引数を指定してください"  
  exit 1  
} 

if [ 0 -eq $# ]; then
  usage
fi

message=$1
 
[ ! -z "$message" ] && curl -X POST -H 'Content-type: application/json' --data "{
  \"text\": \"${message}\"
}" https://hooks.slack.com/services/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
