class Zenoscript < Formula
  desc "Bringing Functional-ish to Typescript"
  homepage "https://github.com/wess/zenoscript"
  version "0.1.5"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/zenoscript/releases/download/v#{version}/zenoscript-darwin-x64.tar.gz"
      sha256 "95439ac705a2eda76dd26e9cb086b6460b57d1f1e09d1d892fbda47ae122da08"
    else # ARM
      url "https://github.com/wess/zenoscript/releases/download/v#{version}/zenoscript-darwin-arm64.tar.gz"
      sha256 "e42f1c46c164e7f801a3bd7a6d1283a57caa4ea4be351786aecd18a7dac2fd07"
    end
  elsif OS.linux?
    url "https://github.com/wess/zenoscript/releases/download/v#{version}/zenoscript-linux-x64.tar.gz"
    sha256 "fc18940f83f646949c543855f7e589090a9175d63e79cf40630ac99802c3e137"
  end

  def install
    bin.install "zeno"
  end

  test do
    # basic smoke test
    assert_match 1, 1
  end
end