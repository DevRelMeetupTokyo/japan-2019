---
title:  ページタイトル
date:   YYYY-MM-DD
author: 著者名（あなたの名前）
---

こちらはブログ記事のテンプレートです。
このファイルをコピーして、ファイル名を変更してお使いください。

<!--more-->

## 手順

1. 作業ブランチを切る。masterブランチで作業しない！
1. こちらのファイルをコピーしてファイル名を変更。例：`2019-06-15-welcome-to-devrel-japan-2019.md`
1. Markdown形式で記事を書く。front matter （title, date, author）の書き換えをお忘れなく。
1. 挙動をローカルで確認。`$ docker-compose up -d` でプロセスを起動したら http://localhost:4000/japan-2019/blog/ にアクセス。
1. 作業ブランチをpushしてプルリク出す。セルフマージ可。

## 少し解説

### 「もっと読む」表示

`<!--more-->` と書かれたHTMLのコメントアウトは、いわゆる記事の抜粋を示すもので、コメントアウト以前の文章が[記事一覧ページ](https://devrel.tokyo/japan-2019/blog/)に表示されます。

### 日付に注意

Jekyllは現在日時を見て、現在日時よりも未来の記事は非表示にする仕様になっています。
今日の日付、または過去の日付をファイル名とページ上部の front matter に設定してください。


### もっと詳しい仕様は

[Jekyllの公式ドキュメント](https://jekyllrb.com/docs/posts/)をご参照ください。