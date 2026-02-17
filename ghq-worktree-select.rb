class GhqWorktreeSelect < Formula
  desc "Select and create git worktrees from ghq-managed repositories"
  homepage "https://github.com/ToshikiImagawa/ghq-worktree-select"
  url "https://github.com/ToshikiImagawa/ghq-worktree-select/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "35fc82f6db500dfc0ffa5933b81d62820dd46c2ce0a2153a6459bff56bb2881d"
  license "MIT"

  depends_on "ghq"
  depends_on "fzf"
  depends_on "git"

  def install
    bin.install "ghq-worktree-select.sh" => "ghq-worktree-select"
  end

  test do
    assert_match "ghq-worktree-select version", shell_output("#{bin}/ghq-worktree-select --version")
  end
end