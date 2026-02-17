class GhqWorktreeSelect < Formula
  desc "Select and create git worktrees from ghq-managed repositories"
  homepage "https://github.com/ToshikiImagawa/ghq-worktree-select"
  url "https://github.com/ToshikiImagawa/ghq-worktree-select/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "4ecccce02045ea8eaa8882012e46e11d77881bb48752b367d2f23c12b9918d74"
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
