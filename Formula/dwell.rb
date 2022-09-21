class Dwell < Formula
  desc "Virtualenv for Rust in sweet, sweet, bash."
  homepage ""
  url "https://github.com/wess/dwell/archive/refs/tags/0.0.2.tar.gz"
  url "https://github.com/wess/nenv/archive/refs/tags/0.0.1.tar.gz"
  sha256 "787073752ef15208dd404894c4b51c4d5655f38611693e3647e35c61cab3e5c5"
  license "MIT"

  def install
    libexec.install Dir["libexec/*"]

    bin.write_exec_script (libexec/"nenv")
  end

  test do
    system "true"
  end
end
