#!/bin/bash

# GitHub Pages 诊断脚本
echo "=== GitHub Pages 部署诊断 ==="
echo "仓库: Y-TARL/JiayingHe.github.io"
echo "分支: main"
echo "Hugo 版本: $(hugo version 2>/dev/null || echo '未安装')"
echo ""

# 检查重要文件
echo "=== 关键文件检查 ==="
echo "- Hugo 配置文件:"
if [ -f "config/_default/hugo.yaml" ]; then
    echo "  ? config/_default/hugo.yaml 存在"
    echo "  baseURL: $(grep 'baseURL:' config/_default/hugo.yaml || echo '未找到')"
else
    echo "  ? Hugo 配置文件不存在"
fi

echo "- GitHub Actions 工作流:"
if [ -f ".github/workflows/hugo.yml" ]; then
    echo "  ? .github/workflows/hugo.yml 存在"
else
    echo "  ? 工作流文件不存在"
fi

echo "- .nojekyll 文件:"
if [ -f "static/.nojekyll" ]; then
    echo "  ? static/.nojekyll 存在"
else
    echo "  ? .nojekyll 文件不存在（创建中...）"
    mkdir -p static
    touch static/.nojekyll
fi

echo ""
echo "=== 手动部署测试 ==="
echo "正在尝试本地构建..."
if hugo --gc --minify --baseURL "https://jiayinghe.github.io/"; then
    echo "? 本地构建成功"
    if [ -d "public" ] && [ "$(ls -A public 2>/dev/null)" ]; then
        echo "? public 目录包含文件"
        echo "  文件数量: $(find public -type f | wc -l)"
        echo "  index.html: $([ -f "public/index.html" ] && echo "存在" || echo "不存在")"
    else
        echo "? public 目录为空或不存在"
    fi
else
    echo "? 本地构建失败"
fi

echo ""
echo "=== 建议操作 ==="
echo "1. 检查 GitHub Pages 设置: https://github.com/Y-TARL/JiayingHe.github.io/settings/pages"
echo "2. 确保 Source 设置为 'GitHub Actions'"
echo "3. 检查 Actions 权限: https://github.com/Y-TARL/JiayingHe.github.io/settings/actions"
echo "4. 查看最新工作流日志: https://github.com/Y-TARL/JiayingHe.github.io/actions"