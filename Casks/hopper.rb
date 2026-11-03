cask "hopper" do
  version "0.15.97"

  name "Hopper"
  desc "Native container manager for Apple silicon Macs"
  homepage "https://github.com/wess/hopper"

  url "https://github.com/wess/hopper/releases/download/v#{version}/Hopper.dmg"
  sha256 "7dfd9c0a3a7674c4f91ddb6ed692b15436b8f152ea7ac608006224855ad0c0e5"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Hopper.app"

  zap trash: [
    "~/Library/Application Support/Hopper",
    "~/Library/Preferences/io.wess.hopper.plist",
    "~/.hopper",
  ]
end
