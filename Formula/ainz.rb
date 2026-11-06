class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  url "https://github.com/wess/ainz/releases/download/v0.16.0/ainz-0.16.0-aarch64-apple-darwin.tar.gz"
  sha256 "c3a6883acaae965385b59631a1811b71fad65fca8ef253b92069f8c68b784f28"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.16.0/ainz-0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b688983b8a9a79c19ba1aed623c1078868ed6c2ef8a8ed3644372621fcb5e8bb"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.16.0/ainz-0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "541458635eacdafa043455ff0acbca2fed72a6e92f04cb0076e3ab8081d2879c"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
