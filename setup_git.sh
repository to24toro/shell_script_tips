#!/bin/bash

sudo apt update
sudo apt install git -y

# ユーザー名とメールアドレスの設定
read -p "GitHubのユーザー名を入力してください: " username
read -p "GitHubのメールアドレスを入力してください: " email

git config --global user.name "$username"
git config --global user.email "$email"

echo "Gitの設定が完了しました。"
