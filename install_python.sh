#!/bin/bash

# 必要なパッケージのインストール
sudo apt update
sudo apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev

# 最新版Pythonのダウンロードとインストール
version="3.11.2"  # インストールするPythonのバージョンを指定します

cd $HOME
curl -O https://www.python.org/ftp/python/$version/Python-$version.tgz
tar -xf Python-$version.tgz
cd Python-$version
./configure --enable-optimizations
make -j $(nproc)
sudo make altinstall

# シンボリックリンクの作成
sudo ln -s /usr/local/bin/python3.11 /usr/local/bin/python3

# インストールしたPythonのバージョンを確認
python3 --version

echo "Python $version のインストールが完了しました。"
