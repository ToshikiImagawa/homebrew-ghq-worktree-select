class GhqWorktreeSelect < Formula
  desc "Select and create git worktrees from ghq-managed repositories"
  homepage "https://github.com/ToshikiImagawa/ghq-worktree-select"
  url "https://github.com/ToshikiImagawa/ghq-worktree-select/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "e7e66f7a1eacaa77d18a650d4400894ab39af8a9c5e03e18569d326382f13e60"
  license "MIT"

  depends_on "fzf"
  depends_on "ghq"
  depends_on "git"

  def install
    bin.install "ghq-worktree-select.sh" => "ghq-worktree-select"
  end

  test do
    assert_match "ghq-worktree-select version", shell_output("#{bin}/ghq-worktree-select --version")
  end
end
