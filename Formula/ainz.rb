class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.8.1/ainz-0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "5ede092fe7756582255262518b2c2d0a3673200ece5ae9ce5d174300a0426aeb"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.8.1/ainz-0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "b0ec92eab01be48848195af64338da718a2c72644d911aa82319fc435340eec2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.8.1/ainz-0.8.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b3605abc4aad6b28c0d830787445034daa7fda593e61fd20ac09c975d66b0a5"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.8.1/ainz-0.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82c4f743dadbd8672f1bd29c534530eae76859f0cdfc3cf0d0a3758bdc1c35b6"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
