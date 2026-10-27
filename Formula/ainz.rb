class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  url "https://github.com/wess/ainz/releases/download/v0.14.0/ainz-0.14.0-aarch64-apple-darwin.tar.gz"
  sha256 "2efc1b67218771acd025b1f4f89561451decc4353c2f4415a740027562dbf5cb"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.14.0/ainz-0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4aa717eb4384e5f9471b9d3895fd181acdbf29453d3931e6001c56881856d9ff"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.14.0/ainz-0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "577bbe93c11eef254b1c2c02a656ed0e7681991fc7dcdc4cc93c6371f53280c6"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
