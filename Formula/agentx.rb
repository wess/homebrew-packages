class Agentx < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/agentx/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/agentx/releases/download/v0.1.2/agentx-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "da78dfa48254e05fa16e262a60c36cedb55baf7178215beff9f27c662b87565c"
    end
    on_intel do
      url "https://github.com/wess/agentx/releases/download/v0.1.2/agentx-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "3a6afae627227a526e4a48f09069d217e198e5227534cf0039daad630bc87616"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/agentx/releases/download/v0.1.2/agentx-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f6b91a396f38b4f6a58e4070b1b46a0e99aa8df73b60da6e9d401c46355ec305"
    end
    on_intel do
      url "https://github.com/wess/agentx/releases/download/v0.1.2/agentx-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "be15d9fcd91c52e2d7d6caed0d495c69ebc063dc325504fbaab9a11b249e9d12"
    end
  end

  def install
    bin.install "agentx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentx --version")
  end
end
