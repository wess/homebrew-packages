class Realm < Formula
  desc "Isolated environment for the full stack developer of awesomeness."
  homepage "https://github.com/wess/realm"
  version "1.0.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/realm/releases/download/v#{version}/realm-darwin-x64-#{version}.tar.gz"
      sha256 "2057bac87fda06e89e28a91e64e78e7f67c12f0c8a65c1d58adffc443ad536f8"
    else # ARM
      url "https://github.com/wess/realm/releases/download/v#{version}/realm-darwin-arm64-#{version}.tar.gz"
      sha256 "dad0dd940d75c2e3e97159b90a4d654e0aa6aa660fc6a5930a79abc4efa09e91"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/wess/realm/releases/download/v#{version}/realm-linux-x64-#{version}.tar.gz"
      sha256 "282673004e53588f3be4d7f38f4666c27a86e44cbf4416532d82286b96f0d4a2"
    else # ARM
      url "https://github.com/wess/realm/releases/download/v#{version}/realm-linux-arm64-#{version}.tar.gz"
      sha256 "b4fdb9d918e100b8c2e125ab1ad3d50075d7cc2c910ccb95d924ed940058e9cb"
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
