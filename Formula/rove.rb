class Rove < Formula
  desc "PostgreSQL migrations tool built with Bun and TypeScript"
  homepage "https://github.com/wess/rove"
  version "1.0.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/rove/releases/download/v#{version}/rove-#{version}-darwin-x64.tar.gz"
      sha256 "d54b4c5c31c7bbbe0d7574b5dc2e6f26aeeb2f4ce7d801fa27a7d2cc7559a873"
    else # ARM
      url "https://github.com/wess/rove/releases/download/v#{version}/rove-#{version}-darwin-arm64.tar.gz"
      sha256 "7af302463a3ddeeb6b5fb6df209003f5470c669fdef65ac6875a2f1f50d2235c"
    end
  elsif OS.linux?
    url "https://github.com/wess/rove/releases/download/v#{version}/rove-#{version}-linux-x64.tar.gz"
    sha256 "46041447e6d497825a947b47bd11576fd0a9eff4d102f2c6ff11657e7f62827a"
  end

  def install
    bin.install "rove"
  end

  test do
    # basic smoke test
    assert_match "PostgreSQL migrations tool", shell_output("#{bin}/rove --help")
  end
end
