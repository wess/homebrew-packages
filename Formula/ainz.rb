class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.9.2/ainz-0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "50733dfef2620d53de7c8840eea8729969c881a17a053dc6636f410c492f111b"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.9.2/ainz-0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "6e26c43a9c4fc7a5aed3e660c9af7ab0fc15b4a130cd8835a041ad4a89e120f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.9.2/ainz-0.9.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0b85293c023eb6592dd54c7e41d8b02e1e3998ab7ec6fad6e199e0e7d97e2292"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.9.2/ainz-0.9.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c47ce04b15d953f69e452eb4d89c45e1a1d535b38c1542887859eb170324c869"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
