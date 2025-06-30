class Zenoscript < Formula
  desc "Bringing Functional-ish to Typescript"
  homepage "https://github.com/wess/zenoscript"
  version "0.1.4"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/zenoscript/releases/download/v#{version}/zenoscript-darwin-x64.tar.gz"
      sha256 "084a4dc4c09567e39fb9c7cb0d127f4a8a9918dcb935d7d53c18c1a6955d634f"
    else # ARM
      url "https://github.com/wess/zenoscript/releases/download/v#{version}/zenoscript-darwin-arm64.tar.gz"
      sha256 "aa760519cfbea9af999d71fa45fa03787efbe79181f690375c603d4a6db2f8fb"
    end
  elsif OS.linux?
    url "https://github.com/wess/zenoscript/releases/download/v#{version}/zenoscript-linux-x64.tar.gz"
    sha256 "7ddec4997f4b00f7a13c716754b4afacd793babcb9ce5e70cf45afcce62413a7"
  end

  def install
    bin.install "zeno"
  end

  test do
    # basic smoke test
    assert_match 1, 1
  end
end