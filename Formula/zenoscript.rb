class Zenoscript < Formula
  desc "Bringing Functional-ish to Typescript"
  homepage "https://github.com/wess/zenoscript"
  version "0.1.3"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/zenoscript/releases/download/v#{version}/zenoscript-darwin-x64.tar.gz"
      sha256 "8a8f0d00f1e6a8cc30bdaff85b593aebfc97ecdb5feebc4f129eaaa70e8cb24d"
    else # ARM
      url "https://github.com/wess/zenoscript/releases/download/v#{version}/zenoscript-darwin-arm64.tar.gz"
      sha256 "ec258ed39b576775494f090b0152e64dcc5dd8943bcf5a6c4573142c128dde41"
    end
  elsif OS.linux?
    url "https://github.com/wess/zenoscript/releases/download/v#{version}/zenoscript-linux-x64.tar.gz"
    sha256 "547a10ea744b862282fd0c59af8a6e2bcf5ef2cc0d0a6175d247a45e29563149"
  end

  def install
    bin.install "zeno"
  end

  test do
    # basic smoke test
    assert_match 1, 1
  end
end