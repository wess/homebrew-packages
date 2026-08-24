cask "synapse" do
  version "1.0.0"
  sha256 "1482c6ed84473dfff8cc3690618be3076a4f9bf75c5c3b16ede7ee9bb6c79785"

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
