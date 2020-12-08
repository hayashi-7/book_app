# README
<h1 align=“center”>BookREV</h1>

- レビュー共有サイト

- 自分が読んだことのないジャンルや興味がなかったものでも、レビューを見たきっかけで買ってみる、読んでみるという形で自分の幅を広げれたらいいと思いました。

- 自分で読んだものを書き出すことで内容を覚えやすくなったり、内容を表現する力がついて良いと思い作成しました。

- https://mybook-rev.work
---

## テスト用アカウント
1.テスト用
- email: test_user@gmail.com
- password: test0000

2.ゲストユーザー
- ゲストログイン機能
## 機能
- ユーザー管理機能
- ゲストユーザー機能
- 投稿機能（openDB API）
***投稿デモ***
![デモ](https://i.gyazo.com/bd39bb804d9cc089e82c51443addc587.gif)
- 星型評価機能
- 詳細閲覧機能
- 投稿編集削除機能
- ジャンル別閲覧機能
- 検索機能
- いいね機能（非同期）
- フォロー機能（非同期）
- タグ付け機能(acts-as-taggable-on)
- ページネーション
## 使用技術
1. AWS/本番環境（EC2, RDS, ACM, VPC, EIP, IAM, Route53, S3）
2. Nginx
3. Capistrano
4. MySQL
5. puma
6. Javascript
7. Ruby 2.6.5, Rails 6.0.0
8. Mac BigSur(11.0.1)
9. Amazon Linux
10. VSCode, Vim
## 追加実装予定
1. Docker
2. CircleCI（テスト）
3. RSpec（テストフレームワーク）
## インフラ構図
  [![Image from Gyazo](https://i.gyazo.com/53cb64e7b62d77c45f6bf51c05e0face.png)](https://gyazo.com/53cb64e7b62d77c45f6bf51c05e0face)
## 作者
Hayashi Tomoaki
