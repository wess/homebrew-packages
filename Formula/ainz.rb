class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.5.2/ainz-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "c4dffbdc517c9df472188552dec0999ff8c8c34655ef5faa7da18b634a91e295"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.5.2/ainz-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "e9786c9eaf2081901e7bfc2d0d3ade2c2144ec0691329662719fbb542a7cae14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.5.2/ainz-0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e75ae13a00ca0c5f6c1e6ca61fca1a1b8e21abbb0ea1b9a2d4dd2f34e1dc3003"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.5.2/ainz-0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8dff3d4c4d5f5c812a422582b2e1d30d31ce8a3d4d7773e5e70360fb02b0a6b6"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
