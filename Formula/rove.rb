class Rove < Formula
  desc "PostgreSQL migrations tool built with Bun and TypeScript"
  homepage "https://github.com/wess/rove"
  version "0.0.5"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/rove/releases/download/v#{version}/rove-#{version}-darwin-x64.tar.gz"
      sha256 "73703c5570d9b62b783b9d87e8c31aa9bbb569eee832530ce16e2737b57fb997"
    else # ARM
      url "https://github.com/wess/rove/releases/download/v#{version}/rove-#{version}-darwin-arm64.tar.gz"
      sha256 "90a47816fe0e00dbfeb488837d430f3b057ee4b10124d49312e1e42e310104e8"
    end
  elsif OS.linux?
    url "https://github.com/wess/rove/releases/download/v#{version}/rove-#{version}-linux-x64.tar.gz"
    sha256 "ff0524fc638c680bdeaedfd06d67bc56107bf09cc2cf10ad59bf1c7d79c4b9c4"
  end

  def install
    bin.install "rove"
  end

  test do
    # basic smoke test
    assert_match "PostgreSQL migrations tool", shell_output("#{bin}/rove --help")
  end
end