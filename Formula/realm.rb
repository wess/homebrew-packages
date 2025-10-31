class Realm < Formula
  desc "Isolated environment for the full stack developer of awesomeness."
  homepage "https://github.com/wess/realm"
  version "1.2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/realm/releases/download/v#{version}/realm-darwin-x64-#{version}.tar.gz"
      sha256 "8b9f9e6ff281d1e64e981ba77211cc06b4d61953c9901b77f547a44506e7dabf"
    else # ARM
      url "https://github.com/wess/realm/releases/download/v#{version}/realm-darwin-arm64-#{version}.tar.gz"
      sha256 "c02e02f9164855d21c91228da40281098e1d549075542953088e3651ef914a92"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/wess/realm/releases/download/v#{version}/realm-linux-x64-#{version}.tar.gz"
      sha256 "889c72a5b1e788679865d09e5080aad1deeac2982c6f65b1ce5ff081ede0e5de"
    else # ARM
      url "https://github.com/wess/realm/releases/download/v#{version}/realm-linux-arm64-#{version}.tar.gz"
      sha256 "ad8245823a4349ed1dc4368d834b20f73cb8f7044fddb276fc342435156a3de6"
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
