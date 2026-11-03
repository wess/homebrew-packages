class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  url "https://github.com/wess/ainz/releases/download/v0.15.0/ainz-0.15.0-aarch64-apple-darwin.tar.gz"
  sha256 "08583abff393efed5b14c9f103b5edf86d688c16085f13e926a343f939fd339c"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.15.0/ainz-0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bcb44c7ccf87b443154ca1078a8e14aa98e65da27c5300327bf90be5dd9be543"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.15.0/ainz-0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0327c49353f0d2aa5c0bfff9fef6a6ab3f17591a648fe72bda84ee0f86d0ac47"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
