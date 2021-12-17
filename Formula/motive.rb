class Motive < Formula
  desc "Command-line task runner and project manager"
  homepage "https://github.com/wess/motive"
  url "https://github.com/wess/motive/releases/download/0.0.2/motive-0.0.2-x86_64-apple-darwin.tar.gz"
  sha256 "8c5eb891e85db1bd515a5b822b5777927c99bf019ed26d5c12b98c7f054b8943"

  def install
    bin.install "motive"
  end

  test do
    system "motive", "--version"
  end
end
