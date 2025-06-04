class Groundwork < Formula
  desc "CLI toolkit for all things full stack (ish)"
  homepage "https://github.com/wess/groundwork"
  version "0.0.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/groundwork/releases/download/v#{version}/groundwork-#{version}-darwin-x64.tar.gz"
      sha256 "1b9dce738afd5c6adf7866d4093906db97965ad59802802f5faa13921a24e603"
    else # ARM
      url "https://github.com/wess/groundwork/releases/download/v#{version}/groundwork-#{version}-darwin-arm64.tar.gz"
      sha256 "4b35b135f144bed4d954266b007d3c7d61988dd3ee5ac7fdbe7c58c19b9531f2"
    end
  elsif OS.linux?
    url "https://github.com/wess/groundwork/releases/download/v#{version}/groundwork-#{version}-linux-x64.tar.gz"
    sha256 "2f334f00e3c94f08d359948a83d21561b30e7d76b98c3135d8311f9ef29cda20"
  end

  def install
    bin.install "grwo"
  end

  test do
    # basic smoke test
    assert_match 1, 1
  end
end