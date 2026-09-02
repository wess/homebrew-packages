class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.4.0/ainz-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "fb62f5320690d5a9186ee03a3a5e207bfe7749cf61477c40271c2f95289e018c"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.4.0/ainz-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "31bb511a49bbe7892ea77178318253ab7a60f6d6ad8a5a2c71eb7f7f54e5b449"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.4.0/ainz-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ca3331aa228fc1d9d2bc62aedeac741105654a5b82979b3a263383d802a385a"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.4.0/ainz-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5fa21b73b7990988ce00f5067045f1d40a3f29150a02c40c308c6aba6755c552"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
