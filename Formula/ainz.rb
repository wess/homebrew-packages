class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.5.1/ainz-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "bcd9e983867d70f7fabbeb815939eeb624e81453ef3ff31c41d3926a1ad81006"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.5.1/ainz-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "1f5c875fc93075147eef0a4f71184db8f7e9ec736dd0ea25dea863161ace53f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.5.1/ainz-0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe215140d8b48cfd71fd5ce70dc0118ec5cebc5e522d39bf4c16224737cf87fc"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.5.1/ainz-0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3876b752da1f5932eb8ba03d33c67016e1414422f31936292a15680651d68cc6"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
