class Hatch < Formula
  desc "Little shell script magic to spruce up my new project directory."
  homepage ""
  url "https://github.com/wess/hatch/archive/refs/tags/0.0.1.tar.gz"
  sha256 "2ac1fa7baefa1c4314e477657631fcd5ea55500f8332fed0feaa43ff6785dc7a"
  license "MIT"

  def install
    libexec.install Dir["libexec/*"]

    bin.write_exec_script (libexec/"hatch")
  end

  test do
    system "true"
  end

end
