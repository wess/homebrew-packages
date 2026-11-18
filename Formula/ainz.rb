class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  url "https://github.com/wess/ainz/releases/download/v0.17.0/ainz-0.17.0-aarch64-apple-darwin.tar.gz"
  sha256 "fcc999e1605729a8c4093abf4d7bdfcdd0b2ddfae8de004f2b35250453194dc2"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.17.0/ainz-0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8534a7d69cb7bb0f0ec56e84ddde4e31c5d6cd01bd55d15332ecb2228f55873"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.17.0/ainz-0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69bd102a3aee2dfbd4afbf38e8001b2308b3cd59f28129d40e8e86dedc1c0ac8"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
