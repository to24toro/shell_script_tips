#!/bin/bash

# venvのインストール
sudo apt update
sudo apt install -y python3-venv

# 仮想環境の作成と有効化
read -p "仮想環境の名前を入力してください: " venv_name

python3 -m venv $venv_name
source $venv_name/bin/activate

# 仮想環境のエイリアスの設定
read -p "仮想環境のエイリアス名を入力してください: " alias_name

echo "alias $alias_name='source $PWD/$venv_name/bin/activate'" >> $HOME/.bashrc
source $HOME/.bashrc

echo "仮想環境 $venv_name の作成とエイリアスの設定が完了しました。"
