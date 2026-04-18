class GhqWorktreeSelect < Formula
  desc "Select and create git worktrees from ghq-managed repositories"
  homepage "https://github.com/ToshikiImagawa/ghq-worktree-select"
  url "https://github.com/ToshikiImagawa/ghq-worktree-select/releases/download/null/ghq-worktree-select-null.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "fzf"
  depends_on "ghq"
  depends_on "git"

  def install
    bin.install "ghq-worktree-select"
  end

  test do
    assert_match "ghq-worktree-select version", shell_output("#{bin}/ghq-worktree-select --version")
  end
end
