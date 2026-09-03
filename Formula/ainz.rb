class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.6.2/ainz-0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "0806bc03df8a757acf8fe2978a16b9e21dd70d8e926b58b56585317570d9e76e"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.6.2/ainz-0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "a8a5fd487f801ef6d24c59f72823bd2f39ae68ba1bfdb0cd0fd584e5e08566b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.6.2/ainz-0.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "794682702a5a59b1979831ca1166cfced66fb0d1fa21c3fce84181e222ae0431"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.6.2/ainz-0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4c167d5a3703a4faf122c70074cb9b316d2cb0d8e24e2d5edeb108fd39ea312"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
