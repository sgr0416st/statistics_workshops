## 概要
これは統計講座のデモをまとめた資料です。

作成途中です。

## demo
ルートディレクトリに配置してあるDockerfileをbuild、または sgr0416st/r-demo イメージをpullして実行することで、このリポジトリのJupyter notebookを全て実行できるようになります。具体的には、docker をinstallした状態で、ターミナルに移動し、以下のコマンドを実行することで統計講座で使った資料の環境を再現できます。

```
ID=$(docker run -d --rm -p 8888:8888 --name r-demo -w /home/jovyan/work sgr0416st/r-statistics-demo)
sleep 2 # しばらくしないとサーバーが立ち上がらないため
docker exec $ID jupyter notebook list
str=`echo ${str#*:}`
str=`echo ${str%::*}`
open $str
```

## Docker image
https://cloud.docker.com/repository/docker/sgr0416st/r-statistics-demo
