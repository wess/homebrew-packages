class Nenv < Formula
  desc "Virtualenv for the Nelua programming language."
  homepage ""
  url "https://github.com/wess/nenv/archive/refs/tags/0.0.1.tar.gz"
  sha256 "3e469e5b52334fc512818cfc108f316e75536d5a74c0322b682d3d003e932fb7"
  license "MIT"

  def install
    libexec.install Dir["libexec/*"]

    bin.write_exec_script (libexec/"nenv")
  end

  test do
    system "true"
  end
end

