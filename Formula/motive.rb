class Motive < Formula
  desc "Command-line task runner and project manager"
  homepage "https://github.com/wess/motive"
  url "https://github.com/wess/motive/releases/download/0.0.2/motive-0.0.2-x86_64-apple-darwin.tar.gz"
  sha256 "7aa3f8ed6c061f359bf58f677986db78800c69915b53a921c25400d148bd782e"

  def install
    bin.install "motive"
  end

  test do
    system "motive", "--version"
  end
end
