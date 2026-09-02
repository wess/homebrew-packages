class Agentx < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/agentx/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/agentx/releases/download/v0.1.1/agentx-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "4ef7945a00ef4fcb1bb0edcc178bc0904d4a09f11b2e5ee6627bed92f6fef743"
    end
    on_intel do
      url "https://github.com/wess/agentx/releases/download/v0.1.1/agentx-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "a31166d4eded7f7b24d8c40dc45a5f7177c598db5b0eba282539802824c466b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/agentx/releases/download/v0.1.1/agentx-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7426bb4396e74088ee827db09313e9da0170fa2adbd28492b3b8b21f7fe91bf6"
    end
    on_intel do
      url "https://github.com/wess/agentx/releases/download/v0.1.1/agentx-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f5ef27713699d650e72a10ce363b5947fa295efa3e0907b89e1e7fda9b5fa5b"
    end
  end

  def install
    bin.install "agentx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentx --version")
  end
end
