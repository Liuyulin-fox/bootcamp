#5. find: ファイルやディレクトリ（フォルダ）を検索したいときに利用されるLinuxコマンドである。
#例：lで始まるshサフィックスを持つファイルを検索する
find . -iname '*.sh' -and -name 'l*'
./l.sh

#6. chmod：Linuxでファイルのパーミッションを設定するときに使用するコマンドである。
#例：権限:実行可能
chmod +x linux-command-find-chmod-etc.sh

#7. chown: ファイルの所有者とグループを変更する
#例：ファイルの所有者とグループを変更する
chown root: linux-command-find-chmod-etc.sh

#8. バックグラウンドで実行 "&":プログラムがバックグラウンドで処理され、 長い処理や、複数の処理を並列に実行したい場合に便利。
#例：コマンドまたはスクリプトをバックグラウンドで実行する
./linux-command-find-chmod-etc.sh &

#9. "&&":複数をAND演算で実行するために使う。
#例：command1 が 0 を返した場合、command2 を実行
#command1 && command2