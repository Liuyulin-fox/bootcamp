#3. grep: 文字列を検索するときに使うコマンドで、検索対象として複数のファイルやディレクトリが使用できる
#例：shellが含まれている行を出力する
cat grep-tail.txt | grep -n shell

#例：shellが含まれてない行を出力する
cat grep-tail.txt | grep -v shell

#4. tail: ファイルの最終行から数行を表示するコマンドである。
#例：ファイルの最後の10行を表示する
tail grep-tail.txt
