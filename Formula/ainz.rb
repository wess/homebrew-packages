class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  url "https://github.com/wess/ainz/releases/download/v0.18.2/ainz-0.18.2-aarch64-apple-darwin.tar.gz"
  sha256 "58e1ec0fba6f566d8e1bb0b3f4be9484d0dde35f8f07065becd5d186b27ab679"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.18.2/ainz-0.18.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f648cd4adf8d24a778cd64a8a5c790e137d3c15c3b9ea335af397faf6814a6ec"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.18.2/ainz-0.18.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e1f0dd65fb661a2b0dee0968f66c71aaf6288f3ee8f88506ccd246ec4bbff44"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
