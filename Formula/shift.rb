class Shift < Formula
  desc "PostgreSQL migrations tool built with Bun and TypeScript"
  homepage "https://github.com/wesscope/shift"
  version "0.0.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wesscope/shift/releases/download/v#{version}/shift-#{version}-darwin-x64.tar.gz"
      sha256 "c7e83ac14b29a379a4fd7780860517fe10bcb025a57d5a8f272d359988c08f5a"
    else # ARM
      url "https://github.com/wesscope/shift/releases/download/v#{version}/shift-#{version}-darwin-arm64.tar.gz"
      sha256 "2cbd43a7b45b0c383acdd631ac2b3248e842982119faad691398f3b5359ec16e"
    end
  elsif OS.linux?
    url "https://github.com/wesscope/shift/releases/download/v#{version}/shift-#{version}-linux-x64.tar.gz"
    sha256 "0de99ab729f4cb9bfc6b5c5b3c9802a2b1ee0215b21bb494b307a49736c47a65"
  end

  def install
    bin.install "shift"
  end

  test do
    # basic smoke test
    assert_match "PostgreSQL migrations tool", shell_output("#{bin}/shift --help")
  end
end