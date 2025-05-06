class Purge < Formula
  desc "Command-line uninstaller for macOS apps (AppZapper-style)"
  homepage "https://github.com/wess/purge"
  license "MIT"
  version "0.0.1"

  on_intel do
    url  "https://github.com/wess/purge/releases/download/0.0.1/purge-0.0.1-macos-x64.zip"
    sha256 "489958900577916e267f8a6391d483e871b1d914e4028ba60c7daa4632954c8f"
  end

  on_arm do
    url  "https://github.com/wess/purge/releases/download/0.0.1/purge-0.0.1-macos-arm64.zip"
    sha256 "e72898290a1a57ab473a497d13a5e85ca660204346c54659721228bee6048bff"
  end

  def install
    system "unzip", "-qq", cached_download
    if Hardware::CPU.intel?
      bin.install "prg-macos-x64" => "prg"
    else
      bin.install "prg-macos-arm64" => "prg"
    end
  end

  test do
    output = shell_output("#{bin}/prg 2>&1", 1)
    assert_match "Usage: prg", output
  end
end