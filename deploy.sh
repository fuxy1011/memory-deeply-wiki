#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
tiddlywiki wiki --build index

# 拷贝打包后新版本的文件 到 部署目录docs
cp wiki/output/index.html docs/index.html
