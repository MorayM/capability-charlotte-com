#!/bin/bash
mkdir -p "public/blog/$1"

cp src/content/blog/blog_template.txt "src/content/blog/$1.md"

sed -i "s/BLOG_DATE/$(date +'%Y-%m-%d')/g" "src/content/blog/$1.md"
sed -i "s/BLOG_DIR/$1/g" "src/content/blog/$1.md"