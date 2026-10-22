cask "pluck" do
  version "0.2.1"
  sha256 "49d615afca52049683e624127a5f57c150b61d28821c77f20a50dc1176d36e82"

  url "https://github.com/wess/pluck/releases/download/v#{version}/Pluck.dmg"
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
