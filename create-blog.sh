#!/bin/zsh

blog_name=$1
file_name="src/content/blog/$blog_name.md"
title=${blog_name//-/ }

mkdir -p "public/blog/$blog_name"
cp "src/content/blog/blog_template.txt" "$file_name"
sed -i "s/BLOG_TITLE/$title/" "$file_name"
sed -i "s/BLOG_DATE/$(date +'%F')/" "$file_name"
sed -i "s/BLOG_DIR/$blog_name/" "$file_name"