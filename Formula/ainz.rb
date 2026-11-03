class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  url "https://github.com/wess/ainz/releases/download/v0.15.1/ainz-0.15.1-aarch64-apple-darwin.tar.gz"
  sha256 "8d818d7ed9c96be57b9705986af99cfd4971711885815a753aff7ea4d1af56f7"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.15.1/ainz-0.15.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "667da1ee032d2a2217bceaab6ad91a583d4f4ee27999c469c5b69018a1f41ef2"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.15.1/ainz-0.15.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c826a9ffbe1f380be5095e0519fc48c5b74c004a65fa90aae7acf0c0129acfb"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
