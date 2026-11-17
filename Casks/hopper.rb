cask "hopper" do
  version "0.16.2"

  name "Hopper"
  desc "Native container manager for Apple silicon Macs"
  homepage "https://github.com/wess/hopper"

  url "https://github.com/wess/hopper/releases/download/v#{version}/Hopper.dmg"
  sha256 "1abb8e6842f12ccd14a87ba9d3771f0494d11ebc9ac95ee1346a56f6b8b63e4d"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Hopper.app"

  zap trash: [
    "~/Library/Application Support/Hopper",
    "~/Library/Preferences/io.wess.hopper.plist",
    "~/.hopper",
  ]
end
