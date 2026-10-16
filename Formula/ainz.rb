class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  url "https://github.com/wess/ainz/releases/download/v0.11.0/ainz-0.11.0-aarch64-apple-darwin.tar.gz"
  sha256 "4d4f244bb55bd0c6c9ee5056923c45ce01579650fb14389a4bdee33b15a0c090"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.11.0/ainz-0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "533c0ad2be38db720d3226bf3c1e97454cf5732eef6b7de1f989e347debec17e"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.11.0/ainz-0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9b6235976f0fc9be400129896d63e0322069f32363fa0900658720e8d6511631"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
