<!-- I want to review in Japanese. -->

## 概要

<!-- 変更の主要な目的を1-3文で説明してください -->

## 変更内容

<!-- 主要な変更点をリストアップしてください。コミットメッセージのプレフィックスを参考に分類できます -->

### 追加 ([add])
-

### 変更 ([update])
-

### 修正 ([fix])
-

### その他
-

## テスト手順

<!-- 変更内容を検証する方法を記載してください -->

### フォーミュラの検証

```bash
# Ruby構文チェック
ruby -c ghq-worktree-select.rb

# フォーミュラのインストールテスト（オプション）
brew install --build-from-source ./ghq-worktree-select.rb

# 動作確認（オプション）
brew test ghq-worktree-select
```

### バージョン更新の場合

```bash
# 新しいバージョンのSHA256を確認
curl -L https://github.com/ToshikiImagawa/ghq-worktree-select/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256

# フォーミュラファイルのSHA256と一致することを確認
grep sha256 ghq-worktree-select.rb
```

## 提出前チェックリスト

- [ ] コミットメッセージに適切なプレフィックス（[add]/[update]/[fix]等）を付けた
- [ ] Ruby構文チェック（`ruby -c ghq-worktree-select.rb`）が成功した
- [ ] バージョン更新の場合、SHA256ハッシュが正しいことを確認した
- [ ] 上流リポジトリ（ghq-worktree-select）のリリースノートを確認した
- [ ] 依存関係（fzf, ghq, git）に変更がないか確認した
- [ ] ドキュメント（README.md等）を更新した（必要に応じて）

## 関連Issue

<!-- 関連するIssueがあれば記載してください -->

Closes #

## 参考資料

<!-- 参考にしたドキュメントやリソースがあれば記載 -->

---

<!-- for GitHub Copilot review rule -->

<details>
<summary>for GitHub Copilot review rule</summary>

## お願い

- 日本語で回答してください
- 簡潔で分かりやすい説明を心がけてください
- ベストプラクティスの具体例を提示してください
- 指摘の根拠となる情報源や学習リソースの提案を積極的に行ってください

## レビュールール

以下のプレフィックスを使用してレビューコメントを分類してください：

- `[must]` - 必須修正項目（セキュリティ、バグ、重大な設計問題）
- `[recommend]` - 推奨修正項目（パフォーマンス、可読性の大幅改善）
- `[nits]` - 軽微な指摘（コードスタイル、タイポ等）

## レビューステップ

1. コードの差分よりPRの概要を作成する

2. 実際にコードを確認し、以下の観点でレビューを行う
   - コードの正確性
   - パフォーマンス
   - セキュリティ
   - 可読性
   - 保守性
   - コーディング規約の遵守

3. 必要に応じて、具体的な改善点を指摘する

</details>

<!-- for GitHub Copilot review rule -->

<!-- I want to review in Japanese. -->