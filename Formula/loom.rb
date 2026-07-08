class Loom < Formula
  desc "Package manager for AI skills (Claude Code, Codex, and friends)"
  homepage "https://wess.io/loom"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/wess/loom/releases/download/v#{version}/loom-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7240e99a5f0818d20e46845fafe7386efde6616b3c2a7f591392b1ee796955ba"
    end
    on_intel do
      url "https://github.com/wess/loom/releases/download/v#{version}/loom-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "513c1175b43da71b88d0a6dce2b5de46b68262bb36679631ae477e66b7a938ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/loom/releases/download/v#{version}/loom-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42643b37eacd755af7bad492e47fed8827c61e244bec732cedf1317b8d7556a9"
    end
    on_intel do
      url "https://github.com/wess/loom/releases/download/v#{version}/loom-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "98cb5b278976d4c45b56718a170fb9a78ee4f11cd6f30c14e1e3dbc92bf687fc"
    end
  end

  depends_on "git"

  def install
    bin.install "loom"
  end

  test do
    assert_match "loom", shell_output("#{bin}/loom --version")
  end
end
