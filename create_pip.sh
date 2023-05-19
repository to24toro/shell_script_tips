#!/bin/bash

# 必要なパッケージのインストール
sudo apt update
sudo apt install -y python3-pip

# pipのアップグレード
pip3 install --upgrade pip

# pipのバージョンを確認
pip3 --version

echo "pipのインストールが完了しました。"
