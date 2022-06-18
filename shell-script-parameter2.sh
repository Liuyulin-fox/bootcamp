#パラメータ（コマンドライン引数）を渡し、それらを出力(echo)する shell script をコードする②
#パラメータの2個で2つファイル作成
CMDNAME=`basename $0`
if [ $# -ne 2 ]; then
  echo "Usage: $CMDNAME file1 file2" 1>&2
  exit 1
fi

date '+%D' >$1
date '+%R' >$2

echo "Check created files ..."
ls -l $1 $

exit 0