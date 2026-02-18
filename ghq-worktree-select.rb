class GhqWorktreeSelect < Formula
  desc "Select and create git worktrees from ghq-managed repositories"
  homepage "https://github.com/ToshikiImagawa/ghq-worktree-select"
  url "https://github.com/ToshikiImagawa/ghq-worktree-select/releases/download/v1.2.1/ghq-worktree-select-v1.2.1.tar.gz"
  sha256 "b1e9ca33a14a6223850b3e29032eb3a0708532e51e2848a71dd7d673a2b16e29"
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
