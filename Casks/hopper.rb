cask "hopper" do
  version "0.17.1"

  name "Hopper"
  desc "Native container manager for Apple silicon Macs"
  homepage "https://github.com/wess/hopper"

  url "https://github.com/wess/hopper/releases/download/v#{version}/Hopper.dmg"
  sha256 "c7e6dd53ffb7714f13ffde8f550c61b99c9ed752f908ba4100737583b3e03266"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Hopper.app"

  zap trash: [
    "~/Library/Application Support/Hopper",
    "~/Library/Preferences/io.wess.hopper.plist",
    "~/.hopper",
  ]
end
