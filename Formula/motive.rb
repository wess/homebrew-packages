class Motive < Formula
  desc "Command-line task runner and project manager"
  homepage "https://github.com/wess/motive"
  url "https://github.com/wess/motive/releases/download/0.0.2/motive-0.0.2-x86_64-apple-darwin.tar.gz"
  sha256 "3400b72ca5b0198c9644ec6b9cb1f0c751e7d0a4dedaf0dc8338a7dacb3ac51c"

  def install
    bin.install "motive"
  end

  def test
    system "motive", "--version"
  end
end
