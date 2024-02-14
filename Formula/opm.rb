class Hatch < Formula
  desc "Command line tool for building OpenAPI specs."
  homepage "https://github.com/wess/opm"
  url "https://github.com/wess/opm/archive/refs/tags/0.0.1.zip"
  sha256 "97b18860c62506b83f205349403e1531a85cdb9fac77ecd506788219119a3f62"
  license "MIT"

  def install
    libexec.install Dir["libexec/*"]

    bin.write_exec_script (libexec/"opm")
  end

  test do
    system "true"
  end

end
