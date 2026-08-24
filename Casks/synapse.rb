cask "synapse" do
  version "0.1.0-beta.22"
  sha256 "1be8f70068ce10181e5d5a04c0aa6fbb22bfd53273345d81bf377de9043fab4a"

  url "https://github.com/wess/synapse/releases/download/v#{version}/synapse.zip"
  name "Synapse"
  desc "Local memory and scoped credentials for developer tools"
  homepage "https://wess.io/synapse/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "synapse.app"
  binary "#{appdir}/synapse.app/Contents/MacOS/synapse"

  zap trash: [
    "~/Library/Application Support/synapse",
    "~/Library/Preferences/app.synapse.desktop.plist",
    "~/Library/Saved Application State/app.synapse.desktop.savedState",
  ]
end
