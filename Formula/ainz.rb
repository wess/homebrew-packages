class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.3.0/ainz-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "e9e1da8f12bd97bd4d91525568c187f99f8f599ff3a9a75629e0ec6ddb1f600d"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.3.0/ainz-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "76edfdf06017fac88673a0af9f5258a591cf3c945b96e7795db5023f10ceb19f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.3.0/ainz-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f01afe611e6fdc950b64265d4de7ae304567e0e7c0b312b61d55fa3337076da5"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.3.0/ainz-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f849a96ce3dd9affcf4ba54c1c49da72b990d4392d8b64e7aa96f3e7e1cbe6c"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
