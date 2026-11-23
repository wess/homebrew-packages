class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  url "https://github.com/wess/ainz/releases/download/v0.18.0/ainz-0.18.0-aarch64-apple-darwin.tar.gz"
  sha256 "4b185cc7059fa148b3f4adc03c545829b33220cb32635072285f4208775562f6"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.18.0/ainz-0.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95ab7c212efc5cbc961e619827c84feabb50cf98bb82d7790bb4a53b4b54066f"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.18.0/ainz-0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f74dd089776e1d9313cff4411ff43172434956636ed786d5519c979995ea52e"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
