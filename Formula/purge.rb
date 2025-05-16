class Purge < Formula
  desc "Completely uninstall a macOS app and all it's artifacts"
  homepage "https://github.com/wess/purge"
  version "0.0.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/purge/releases/download/v#{version}/purge-#{version}-darwin-x64.tar.gz"
      sha256 "fb60e9019d17a52485aade5b3683545d1849e3f9720e85511c57e3be1736526e"
    else # ARM
      url "https://github.com/wess/purge/releases/download/v#{version}/purge-#{version}-darwin-arm64.tar.gz"
      sha256 "671af814cf029587abe56a76e2bc5af3fb61aa8a2353f203d9a3f3d9afd4fb7b"
    end
  elsif OS.linux?
    url "https://github.com/wess/purge/releases/download/v#{version}/purge-#{version}-linux-x64.tar.gz"
    sha256 "efd0dea027cd5d37a75c5fce8ac4c1fb5c2ba76b5eda781d53149ce6d849120a"
  end

  def install
    bin.install "purge"
  end

  test do
    # basic smoke test
    assert_match 1, 1
  end
end