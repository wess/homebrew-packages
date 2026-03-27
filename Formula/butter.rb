class Butter < Formula
  desc "Lightweight desktop app framework with native webview and TypeScript"
  homepage "https://github.com/wess/butter"
  version "1.1.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/butter/releases/download/v#{version}/butter-darwin-x64.tar.gz"
      sha256 "8bd2ae23192ddee017bf2fa22cabaeb745bd11d45a14c1f077f6c4faddde0677"
    else # ARM
      url "https://github.com/wess/butter/releases/download/v#{version}/butter-darwin-arm64.tar.gz"
      sha256 "60e94e05f716dcb5f26477887f800fbf8a17e54378e007e12ef0e17ebcd6db02"
    end
  elsif OS.linux?
    url "https://github.com/wess/butter/releases/download/v#{version}/butter-linux-x64.tar.gz"
    sha256 "1bbca80309c808258fa8c490ead51c61c7d2d1591855debfd58a1c6978d59aa0"
  end

  def install
    bin.install "butter"
  end

  test do
    assert_match "Usage: butter <command>", shell_output("#{bin}/butter")
  end
end
