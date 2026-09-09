class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  url "https://github.com/wess/ainz/releases/download/v0.10.3/ainz-0.10.3-aarch64-apple-darwin.tar.gz"
  sha256 "d609d5374f8db2695f1fb0fcf1856d3236c9e526d26034ef5a25e24d3e9eecd8"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.10.3/ainz-0.10.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f801afa4214cda2633ee9184d184d881215fbe1634a476df536f529cafcbbdfc"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.10.3/ainz-0.10.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7691a08c90f9ab4d7e92c5dd029e408b9fafcaee1af1c97ef210b28cc1a5fc0a"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
