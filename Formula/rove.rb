class Rove < Formula
  desc "PostgreSQL migrations tool built with Bun and TypeScript"
  homepage "https://github.com/wess/rove"
  version "0.0.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/rove/releases/download/v#{version}/rove-#{version}-darwin-x64.tar.gz"
      sha256 "616fd40b2f6dfb245eb9f4dd8c26fead832e326a08a92ef6d061f47c45d5b32c"
    else # ARM
      url "https://github.com/wess/rove/releases/download/v#{version}/rove-#{version}-darwin-arm64.tar.gz"
      sha256 "f72f59d76ea646b4477b04036ec04d630334e18e554dfe50929f4a6e03fb46b5"
    end
  elsif OS.linux?
    url "https://github.com/wess/rove/releases/download/v#{version}/rove-#{version}-linux-x64.tar.gz"
    sha256 "dde252100e89c48f8592c8bb684bc2cf58ff8735c7de23a5f10bd37f09ffeffc"
  end

  def install
    bin.install "rove"
  end

  test do
    # basic smoke test
    assert_match "PostgreSQL migrations tool", shell_output("#{bin}/rove --help")
  end
end