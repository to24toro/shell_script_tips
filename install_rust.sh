#!/bin/bash

# Rustupのインストール
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# 環境変数の更新
source $HOME/.cargo/env

# Rustのバージョンを確認
rustc --version

echo "Rustのインストールが完了しました。"
