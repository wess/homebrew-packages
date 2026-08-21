class Taxi < Formula
  desc "Agent harness for DigitalOcean's models, with a meter running"
  homepage "https://github.com/wess/taxi"
  version "0.1.0-beta.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/taxi/releases/download/v0.1.0-beta.2/taxi-0.1.0-beta.2-darwin-x64.tar.gz"
      sha256 "2ef8adcfbacb94e699375cb89afcb177cde36f3c771ee2a276f949616021bbc5"
    else
      url "https://github.com/wess/taxi/releases/download/v0.1.0-beta.2/taxi-0.1.0-beta.2-darwin-arm64.tar.gz"
      sha256 "4bb3cd1ed3a90c6a9323d218e655bcacd27357d13ccb2ee81a595a8cd9d24e67"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/wess/taxi/releases/download/v0.1.0-beta.2/taxi-0.1.0-beta.2-linux-x64.tar.gz"
      sha256 "85b7623ed052059dbfa23a608d6bcded868ef063f6d2ee65a5d6fc44cadeb5c2"
    else
      url "https://github.com/wess/taxi/releases/download/v0.1.0-beta.2/taxi-0.1.0-beta.2-linux-arm64.tar.gz"
      sha256 "3feb42e05ed738e05eb0f4c0fe7d7a92a90fdff00328246b30a36dd9e54ad789"
    end
  end

  def install
    bin.install "taxi"
  end

  test do
    assert_match "taxi #{version}", shell_output("#{bin}/taxi --version")
  end
end
