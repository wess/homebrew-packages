class Motive < Formula
  desc "Command-line task runner and project manager"
  homepage "https://github.com/wess/motive"
  url "https://github.com/wess/motive/releases/download/0.0.1/motive-0.0.1-x86_64-apple-darwin.tar.gz"
  sha256 "6446697762d8e42c4fad596205cbccd2cb86825f5cf327e48a6ca4c6b42393c9"

  def install
    bin.install "motive"
  end

  test do
    system "motive", "--version"
  end
end
