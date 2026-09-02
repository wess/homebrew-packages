class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.5.3/ainz-0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "ae8f625dee70219e60225a1110329764f41b93d3fac1435840c4ee6179424ac5"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.5.3/ainz-0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "66a63bca1d2cbb298acd2f32893dee711ad23d2293a5c5bfe4d86080d240b4e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.5.3/ainz-0.5.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56c52765599f971829d5404f8ed56f0ec372da3ce85c79f58c441d9e02d36c07"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.5.3/ainz-0.5.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7cc851c121589cfb7580eaa0e6d9ab18473a4a93bc1e93f3088eca88a746804"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
