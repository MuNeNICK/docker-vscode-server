FROM ubuntu:latest

# Install vim
RUN apt-get update && apt-get install -y vim

WORKDIR /workspace

# 日本語化
RUN apt-get update \
  && apt-get install -y locales \
  && locale-gen ja_JP.UTF-8 \
  && echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc

#インストール
RUN apt-get update && apt-get install -y wget git
RUN wget -O- https://aka.ms/install-vscode-server/setup.sh | sh
