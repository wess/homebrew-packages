class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.5.0/ainz-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "e230472d47166ac5e7b3f3218bf78e0276c9fbcc9e97199fa0d8e3123a398359"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.5.0/ainz-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "d0eb211caa6dcc1f05da6a45461168af9506b828ee7e72cff0b37342a8f7a403"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.5.0/ainz-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e4b6ae37e10e9db3b5c4ef43aa138edc36a217ac997d703a0ceb97e6bceab137"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.5.0/ainz-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65d670ddf45a544cfa55df318e454b37b1f65856b2ef04d097514aaf173fa96e"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
