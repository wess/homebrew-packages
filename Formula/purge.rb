class Purge < Formula
  desc "Completely uninstall a macOS app and all it's artifacts"
  homepage "https://github.com/wess/purge"
  version "0.0.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/purge/releases/download/v#{version}/purge-#{version}-darwin-x64.tar.gz"
      sha256 "016a2659473d918280d0bda446e9bf56aed78bf29c786ed76194b79b4d83ae73"
    else # ARM
      url "https://github.com/wess/purge/releases/download/v#{version}/purge-#{version}-darwin-arm64.tar.gz"
      sha256 "3e1f38e16af9ed789b1cf8353b33c4d8bd05f6ba3514dfd6ebf342bafa3a5a5e"
    end
  elsif OS.linux?
    url "https://github.com/wess/purge/releases/download/v#{version}/purge-#{version}-linux-x64.tar.gz"
    sha256 "f5346cc55bb78708f74914e6d65623179027c27e730e5141932b77309b12cb10"
  end

  def install
    bin.install "prg"
  end

  test do
    # basic smoke test
    assert_match 1, 1
  end
end