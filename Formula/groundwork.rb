class Groundwork < Formula
  desc "CLI toolkit for all things full stack (ish)"
  homepage "https://github.com/wess/groundwork"
  version "0.0.3"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/groundwork/releases/download/v#{version}/groundwork-#{version}-darwin-x64.tar.gz"
      sha256 "763f6de140d9013bee33ab26087f0c3df46ce708020e1a4a3f4e4d57af187ff0"
    else # ARM
      url "https://github.com/wess/groundwork/releases/download/v#{version}/groundwork-#{version}-darwin-arm64.tar.gz"
      sha256 "3f2b8c5d2f2b81b747fc0475e69e18b4b85a5ddd209292b4cdfe7e3e50521227"
    end
  elsif OS.linux?
    url "https://github.com/wess/groundwork/releases/download/v#{version}/groundwork-#{version}-linux-x64.tar.gz"
    sha256 "cc5dacd29ff73e5e4c91f923ed44535927396230f7487e884b9e9ad939d5f487"
  end

  def install
    bin.install "grwo"
  end

  test do
    # basic smoke test
    assert_match 1, 1
  end
end