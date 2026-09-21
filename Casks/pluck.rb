cask "pluck" do
  version "0.1.0"
  sha256 "3c6b53b2b42b77ce1816783f0673b79fe7358c12f7cf7aeb8876a551fe465a47"

  url "https://github.com/wess/pluck/releases/download/v#{version}/Pluck.dmg"
  name "Pluck"
  desc "Drop anything, get a short link back"
  homepage "https://pluck.io"

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
