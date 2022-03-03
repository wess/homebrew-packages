class Motive < Formula
  desc "Command-line task runner and project manager"
  homepage "https://github.com/wess/motive"
  url "https://github.com/wess/motive/releases/download/0.0.3/motive-0.0.3-x86_64-apple-darwin.tar.gz"
  sha256 "db53e29d1d36d03d3cc735fae04d8bb59ca5709e73772ba2209c60b1f7d4d2ce"

  def install
    bin.install "motive"
  end

  test do
    system "motive", "--version"
  end
end
