class Agentx < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/agentx/"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/wess/agentx/releases/download/v#{version}/agentx-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c82e14bfed5ec8fa48a2738c85b0636f9e61e62b6e7a9cf67c06b883226b2acc"
    end
    on_intel do
      url "https://github.com/wess/agentx/releases/download/v#{version}/agentx-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "00b2ddcf89990840285194d6078ccb061e15daff39a665d6c1f80408a94e5d59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/agentx/releases/download/v#{version}/agentx-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6e95a012d8996cc23f0439ee7e03f23881e133c66d933ffda67c0ea8d7171352"
    end
    on_intel do
      url "https://github.com/wess/agentx/releases/download/v#{version}/agentx-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23c2cf67182b68ec6e0728840c24f282e02e35a34094fd55808302bfbc4342ac"
    end
  end

  def install
    bin.install "agentx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentx --version")
  end
end
