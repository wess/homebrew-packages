class Rove < Formula
  desc "PostgreSQL migrations tool built with Bun and TypeScript"
  homepage "https://github.com/wess/rove"
  version "0.0.4"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/rove/releases/download/v#{version}/rove-#{version}-darwin-x64.tar.gz"
      sha256 "89bf06b2ab478db50fd1603777f31d984b391f64673feaab7c99d0c98ae818ac"
    else # ARM
      url "https://github.com/wess/rove/releases/download/v#{version}/rove-#{version}-darwin-arm64.tar.gz"
      sha256 "adb853da6a0fb57ae7f26bcc169bb32c5011f88298de2a8becec3dacfade7ed6"
    end
  elsif OS.linux?
    url "https://github.com/wess/rove/releases/download/v#{version}/rove-#{version}-linux-x64.tar.gz"
    sha256 "3d1b4b0ea3aab764a5e7f1b9d197a43e378db9520a1af206f4f53d3944945dde"
  end

  def install
    bin.install "rove"
  end

  test do
    # basic smoke test
    assert_match "PostgreSQL migrations tool", shell_output("#{bin}/rove --help")
  end
end