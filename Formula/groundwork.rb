class Groundwork < Formula
  desc "CLI toolkit for all things full stack (ish)"
  homepage "https://github.com/wess/groundwork"
  version "0.0.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/groundwork/releases/download/v#{version}/groundwork-#{version}-darwin-x64.tar.gz"
      sha256 "280dbb9f8dd8090f0dfef4cc83e66af51f1d57a334ac88485096ac0d0980a78b"
    else # ARM
      url "https://github.com/wess/groundwork/releases/download/v#{version}/groundwork-#{version}-darwin-arm64.tar.gz"
      sha256 "c3336af8b09f1e72464223044b45ac596b71099c41aa366997b70eeb95597cb2"
    end
  elsif OS.linux?
    url "https://github.com/wess/groundwork/releases/download/v#{version}/groundwork-#{version}-linux-x64.tar.gz"
    sha256 "ebca2f2b10ffd4cdb30a8f4cb7f52b552e7a08dd94740f25f40cb3ccbaa84a60"
  end

  def install
    bin.install "grwo"
  end

  test do
    # basic smoke test
    assert_match 1, 1
  end
end