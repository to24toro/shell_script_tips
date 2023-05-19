#!/bin/bash

# インストールスクリプトのパス
git_install_script="./setup_git.sh"
python_install_script="./install_python.sh"
rust_install_script="./install_rust.sh"
pip_install_script="./install_pip.sh"
venv_create_script="./create_venv.sh"

# Gitのインストール
echo "Githubの設定を開始します..."
chmod +x $git_install_script
$git_install_script
echo "Githubの設定が完了しました。"

# Pythonのインストール
echo "Pythonのインストールを開始します..."
chmod +x $python_install_script
$python_install_script
echo "Pythonのインストールが完了しました。"

# Pythonのインストール
echo "Rustのインストールを開始します..."
chmod +x $rust_install_script
$rust_install_script
echo "Rustのインストールが完了しました。"

# pipのインストール
echo "pipのインストールを開始します..."
chmod +x $pip_install_script
$pip_install_script
echo "pipのインストールが完了しました。"

# venvの作成
echo "仮想環境の作成を開始します..."
chmod +x $venv_create_script
$venv_create_script
echo "仮想環境の作成が完了しました。"

echo "すべての処理が完了しました。"
