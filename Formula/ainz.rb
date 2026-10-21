class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  url "https://github.com/wess/ainz/releases/download/v0.13.0/ainz-0.13.0-aarch64-apple-darwin.tar.gz"
  sha256 "8c081e1d8a8d155321b5075927f955c9295ecf4ac942ae1404977ddd64d53c47"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.13.0/ainz-0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "597670b84a0a49a9c0c8cd302ca521f5155d7243e1de18bbbe43294860f20b2c"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.13.0/ainz-0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c00e0b737992eaf0987773b1eb812fd778c955cd264111e26b494b696fa03805"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
