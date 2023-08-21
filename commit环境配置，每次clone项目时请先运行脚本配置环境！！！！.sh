#!/bin/bash

# 源文件路径
source_file="commit-msg"

# 目标文件路径
destination_folder=".git/hooks"

# 如果目标文件夹不存在，则创建它
if [ ! -d "$destination_folder" ]; then
    mkdir -p "$destination_folder"
fi

# 拷贝源文件到目标文件夹
cp "$source_file" "$destination_folder/"

echo "commit-msg 文件已成功拷贝到 .git/hooks 文件夹。"
