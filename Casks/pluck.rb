cask "pluck" do
  version "0.2.3"
  sha256 "a6df62df02c50ab61950a74c390283887b04c4f2ff41a589cbcbb00e1720024f"

  url "https://pluck.io/download/mac/#{version}/Pluck.dmg"
  name "Pluck"
  desc "Drop anything, get a short link back"
  homepage "https://pluck.io/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Pluck.app"

  uninstall launchctl: "io.pluck.desktop.agent",
            quit:      "io.pluck.desktop"

  zap trash: [
    "~/.pluck",
    "~/Library/Preferences/io.pluck.desktop.plist",
    "~/Library/Saved Application State/io.pluck.desktop.savedState",
  ]
end
