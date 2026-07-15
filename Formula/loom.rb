class Loom < Formula
  desc "Package manager for AI skills (Claude Code, Codex, and friends)"
  homepage "https://wess.io/loom"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/wess/loom/releases/download/v#{version}/loom-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "024d9503c17a25b416a1f188b69a70c793fbc282a8d16e7da9d69d044358fdc5"
    end
    on_intel do
      url "https://github.com/wess/loom/releases/download/v#{version}/loom-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d42d0916d1fe9842e715882e2f7e4651a0d5be2446ff7bba7272304b0f9d9bcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/loom/releases/download/v#{version}/loom-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7865c57cbe39efa7e3bd25cc8fb80c5e119b135b19851553e89da316a23741b"
    end
    on_intel do
      url "https://github.com/wess/loom/releases/download/v#{version}/loom-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "03cc701e198e1c96ff97456a033ad515b095b58ab867e46cfdc4611ef858ac73"
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
