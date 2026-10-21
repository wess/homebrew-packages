cask "synapse" do
  version "1.14.2"
  sha256 "adabeeac7da8149235b96ce7dd04a91a50d145c0e33d46e99630036026fb1eb1"

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
