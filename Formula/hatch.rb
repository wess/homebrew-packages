class Hatch < Formula
  desc "Little shell script magic to spruce up my new project directory."
  homepage ""
  url "https://github.com/wess/hatch/archive/refs/tags/0.0.2.tar.gz"
  sha256 "20ad35f522225a7abdcc2dcf8a5fc33c2183c9f1c37de3ace9e83be302f02379"
  license "MIT"

  def install
    libexec.install Dir["libexec/*"]

    bin.write_exec_script (libexec/"hatch")
  end

  test do
    system "true"
  end

end
