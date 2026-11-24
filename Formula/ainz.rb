class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  url "https://github.com/wess/ainz/releases/download/v0.18.1/ainz-0.18.1-aarch64-apple-darwin.tar.gz"
  sha256 "66e7647eeebfccc677ae808aab1cfee5d8e349bef2be51bcabac6df8a7250f32"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.18.1/ainz-0.18.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e2d1453900e5983e09704725c25e31c877cb27aa0d72acc23d868881d7a41cb6"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.18.1/ainz-0.18.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "62e41614e1cb7be49a82680e6466d40bb8579564aeb95f4581483aae213a40f6"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
