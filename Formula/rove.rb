class Rove < Formula
  desc "PostgreSQL migrations tool built with Bun and TypeScript"
  homepage "https://github.com/wess/rove"
  version "0.0.3"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/rove/releases/download/v#{version}/rove-#{version}-darwin-x64.tar.gz"
      sha256 "3b19cbbbe5d79d9c2575b1acee5bb1b42984be716440f51d930b3c5ad6339788"
    else # ARM
      url "https://github.com/wess/rove/releases/download/v#{version}/rove-#{version}-darwin-arm64.tar.gz"
      sha256 "47b63c5614d9f0534dbb2e219f5c727f4b0ca3c532a9cf00581c19acf825509c"
    end
  elsif OS.linux?
    url "https://github.com/wess/rove/releases/download/v#{version}/rove-#{version}-linux-x64.tar.gz"
    sha256 "22082c886cc81f1f4a9cdfbfad032fc49c9db45053ae9f28279382611b5780b6"
  end

  def install
    bin.install "rove"
  end

  test do
    # basic smoke test
    assert_match "PostgreSQL migrations tool", shell_output("#{bin}/rove --help")
  end
end