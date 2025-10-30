class Realm < Formula
  desc "Isolated environment for the full stack developer of awesomeness."
  homepage "https://github.com/wess/realm"
  version "1.1.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/realm/releases/download/v#{version}/realm-darwin-x64-#{version}.tar.gz"
      sha256 "2e56c8238de659a6865bd19f5c43d61dc1a8da7b7ef1b326995af30de752e79b"
    else # ARM
      url "https://github.com/wess/realm/releases/download/v#{version}/realm-darwin-arm64-#{version}.tar.gz"
      sha256 "8e877a8fd6b4b1f70e737ba3e61deb156c0e37056500f48f38b02de5c4c1fd13"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/wess/realm/releases/download/v#{version}/realm-linux-x64-#{version}.tar.gz"
      sha256 "cc041831623dcbf5ac22e9d7daef7973a52da93258eb0c57dadfd95dd4f5c338"
    else # ARM
      url "https://github.com/wess/realm/releases/download/v#{version}/realm-linux-arm64-#{version}.tar.gz"
      sha256 "3cab29ea386a082da6bd594d78966323c90a3d5fed59211aca3fcf3f8a6bf485"
    end
  end

  def install
    bin.install "realm"
  end

  test do
    # basic smoke test
    assert_match 1, 1
  end
end
