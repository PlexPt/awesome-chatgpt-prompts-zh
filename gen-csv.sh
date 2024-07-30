#!/bin/bash

# 使用 https://github.com/jqlang/jq 转换 json 到 csv
# 表头
echo "act,prompt" >prompts-zh.csv
echo "act,prompt" >prompts-zh-TW.csv
# 内容
cat prompts-zh.json | jq -r '.[]|[ .act, .prompt] |@csv' >> prompts-zh.csv
cat prompts-zh-TW.json | jq -r '.[]|[ .act, .prompt] |@csv' >> prompts-zh-TW.csv
