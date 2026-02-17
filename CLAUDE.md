# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## リポジトリ概要

このリポジトリはHomebrew Tap（Homebrewのサードパーティパッケージリポジトリ）で、[ghq-worktree-select](https://github.com/ToshikiImagawa/ghq-worktree-select)ツールのHomebrewフォーミュラを管理している。

## アーキテクチャ

- `ghq-worktree-select.rb`: Homebrewフォーミュラファイル（Rubyで記述）
  - 実際のツール本体は別リポジトリ（ghq-worktree-select）で管理
  - このフォーミュラはインストール方法とメタデータのみを定義

## 開発タスク

### フォーミュラの検証

```bash
# フォーミュラの文法とスタイルをチェック
brew audit --strict --online ghq-worktree-select.rb

# ローカルでインストールテスト
brew install --build-from-source ./ghq-worktree-select.rb

# テストの実行
brew test ghq-worktree-select
```

### 新バージョンのリリース手順

1. 上流リポジトリで新しいタグがリリースされる
2. このリポジトリのフォーミュラを更新:
   - `url`: 新しいバージョンのtarballのURL
   - `sha256`: 新しいtarballのSHA256ハッシュ（`curl -L <url> | shasum -a 256`で取得）
3. `brew audit`でバリデーション
4. コミット・プッシュ

### SHA256ハッシュの取得

```bash
# 新しいリリースのSHA256を計算
curl -L https://github.com/ToshikiImagawa/ghq-worktree-select/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
```

## Homebrewフォーミュラの仕様

- `desc`: ツールの簡潔な説明（80文字以内推奨）
- `homepage`: プロジェクトのホームページURL
- `url`: ソースコードのtarball URL
- `sha256`: tarballのSHA256ハッシュ（セキュリティ検証用）
- `license`: ライセンス種別
- `depends_on`: 実行時に必要な依存パッケージ
- `install`: インストール処理の定義
- `test`: インストール後の動作確認テスト