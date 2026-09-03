class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.8.0/ainz-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "da0933bfd2f3fe808c6f3fc9498e10e52a9c2fc6fa48888a26692cdd64f833b0"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.8.0/ainz-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "0ff5baacb7fb0fe26b5e72762011158f1b3e4ed6e1ed5850f7e49f3160a7a57f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.8.0/ainz-0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4f0be70dbef22fd83295c69a9ab8f0f708f74a770c669f9118971e18dea051e2"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.8.0/ainz-0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29787915e5c7dac0877c1fdf8a32739066317d8f7070dea52a42d4636f2e6030"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
