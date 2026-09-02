class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.6.0/ainz-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "f70c1287d572c7cc189236966b3b96dad0b44376cf5d751620034814f71bf1f9"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.6.0/ainz-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "6f708ec0d3032aadc9ff446ec926a65a4bdcba7aa4460b42abe30241701efe5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.6.0/ainz-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6e60c44d8c46b6ced319a06beeefbfc7f3ab8abe4e0caba71481d24c5ea1b1d7"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.6.0/ainz-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d83ac385d842e39973d06fb5038979c225817cb49bcc6c5b69ef3d231988a37"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
