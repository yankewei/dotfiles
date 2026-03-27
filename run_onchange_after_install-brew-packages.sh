#!/bin/bash
# 文件名中的 `onchange` 确保只有文件内容变化时才执行
# `after` 确保在文件同步完成后执行

set -e

# 检查 Homebrew 是否安装
if ! command -v brew &> /dev/null; then
    echo "⚠️  Homebrew 未安装，跳过 Brewfile 安装"
    echo "   请先安装 Homebrew: https://brew.sh"
    exit 0
fi

echo "🍺 检查 Homebrew 软件包..."

# 安装/更新 Brewfile 中的软件
if [ -f "$HOME/.Brewfile" ]; then
    brew bundle --global --no-upgrade 2>/dev/null || {
        echo "⚠️ 部分软件包安装失败，请检查上方错误信息"
        exit 0
    }
    echo "✅ Homebrew 软件包检查完成"
else
    echo "⚠️ 未找到 ~/.Brewfile"
fi
