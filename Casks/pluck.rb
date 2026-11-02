cask "pluck" do
  version "0.2.2"
  sha256 "39a552710af20c2d2031b730184e6f1fb8e25ab115d290d457572b7b6e67210c"

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
