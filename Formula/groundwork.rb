class Groundwork < Formula
  desc "CLI toolkit for all things full stack (ish)"
  homepage "https://github.com/wess/groundwork"
  version "0.0.4"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/groundwork/releases/download/v#{version}/groundwork-#{version}-darwin-x64.tar.gz"
      sha256 "8203b46b6770d5921ba0c98ac80c14e6562d15d56b2568472aba4545d878ef21"
    else # ARM
      url "https://github.com/wess/groundwork/releases/download/v#{version}/groundwork-#{version}-darwin-arm64.tar.gz"
      sha256 "daab33eb8282cd3ed54bd1e68b0a2e9980b8cd396914032c3684151c18962df7"
    end
  elsif OS.linux?
    url "https://github.com/wess/groundwork/releases/download/v#{version}/groundwork-#{version}-linux-x64.tar.gz"
    sha256 "b73c9bd36d0647755d40020d06cad6b742120e034b28cd307c6a5f145d2a90fb"
  end

  def install
    bin.install "grwo"
  end

  test do
    # basic smoke test
    assert_match 1, 1
  end
end