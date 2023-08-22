#!/bin/bash

# 源文件路径
source_file="commit-msg"

# 目标文件路径
destination_folder=".git/hooks"

# 要添加的行内容
additional_line="# This is an additional line added automatically."

# 要替换的文本
replacement="require('./node_modules/commit-msg-linter/commit-msg-linter.js');"

# 如果目标文件夹不存在，则创建它
if [ ! -d "$destination_folder" ]; then
    mkdir -p "$destination_folder"
fi

# 拷贝源文件到目标文件夹
cp "$source_file" "$destination_folder/"

# 在目标文件中添加额外的行
echo "$additional_line" >> "$destination_folder/$source_file"

# 替换第七行的文本
sed -i '7s#.*#'"$replacement"'#' "$destination_folder/$source_file"

echo "commit-msg 文件已成功拷贝到 .git/hooks 文件夹并添加了额外的行。"
echo "第七行的文本已被修改。"
echo "配置成功！按任意键继续或 Ctrl+C 退出。"
read -n 1 -s