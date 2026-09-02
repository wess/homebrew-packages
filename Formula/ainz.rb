class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.2.0/ainz-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "1f0e46b039081fdc3a19deb01b10f5d43a80c349bde51ab9286c56e1c8cca55e"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.2.0/ainz-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "5e2635b269b786e0cfb9a42e9637c4156f1370dd75ceebde5c4b21ce0de8e905"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.2.0/ainz-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd5ae945c59cf270d449834019a1098db0701eb5ea038d7fa6eedbda17a709db"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.2.0/ainz-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb89e629b2d6b4dc37f7e0954a91b8d4d91dd2f8102ad1d33eee94d24844542c"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
