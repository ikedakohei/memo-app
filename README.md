# メモ用アプリ

RailsとVue.jsを使って作成。

## Docker開発環境構築手順

1. Docker Desktopの[インストール](https://www.docker.com/products/docker-desktop)
2. このリポジトリをgit cloneして、tpi_nextディレクトリへ移動
3. `docker-compose up -d`でコンテナ作成と起動
4. `docker-compose exec web bash`でコンテナ内に入る
5. `sh prep_docker.sh`で開発環境構築用のスクリプトを実行
6. `rails s -b 0.0.0.0`でサーバー立ち上げる
7. ブラウザで[http://localhost:3000](http://localhost:3000)にアクセス
