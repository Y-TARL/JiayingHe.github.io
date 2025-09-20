#!/bin/bash

# GitHub Pages ��Ͻű�
echo "=== GitHub Pages ������� ==="
echo "�ֿ�: Y-TARL/JiayingHe.github.io"
echo "��֧: main"
echo "Hugo �汾: $(hugo version 2>/dev/null || echo 'δ��װ')"
echo ""

# �����Ҫ�ļ�
echo "=== �ؼ��ļ���� ==="
echo "- Hugo �����ļ�:"
if [ -f "config/_default/hugo.yaml" ]; then
    echo "  ? config/_default/hugo.yaml ����"
    echo "  baseURL: $(grep 'baseURL:' config/_default/hugo.yaml || echo 'δ�ҵ�')"
else
    echo "  ? Hugo �����ļ�������"
fi

echo "- GitHub Actions ������:"
if [ -f ".github/workflows/hugo.yml" ]; then
    echo "  ? .github/workflows/hugo.yml ����"
else
    echo "  ? �������ļ�������"
fi

echo "- .nojekyll �ļ�:"
if [ -f "static/.nojekyll" ]; then
    echo "  ? static/.nojekyll ����"
else
    echo "  ? .nojekyll �ļ������ڣ�������...��"
    mkdir -p static
    touch static/.nojekyll
fi

echo ""
echo "=== �ֶ�������� ==="
echo "���ڳ��Ա��ع���..."
if hugo --gc --minify --baseURL "https://jiayinghe.github.io/"; then
    echo "? ���ع����ɹ�"
    if [ -d "public" ] && [ "$(ls -A public 2>/dev/null)" ]; then
        echo "? public Ŀ¼�����ļ�"
        echo "  �ļ�����: $(find public -type f | wc -l)"
        echo "  index.html: $([ -f "public/index.html" ] && echo "����" || echo "������")"
    else
        echo "? public Ŀ¼Ϊ�ջ򲻴���"
    fi
else
    echo "? ���ع���ʧ��"
fi

echo ""
echo "=== ������� ==="
echo "1. ��� GitHub Pages ����: https://github.com/Y-TARL/JiayingHe.github.io/settings/pages"
echo "2. ȷ�� Source ����Ϊ 'GitHub Actions'"
echo "3. ��� Actions Ȩ��: https://github.com/Y-TARL/JiayingHe.github.io/settings/actions"
echo "4. �鿴���¹�������־: https://github.com/Y-TARL/JiayingHe.github.io/actions"