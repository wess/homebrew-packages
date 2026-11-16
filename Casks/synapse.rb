cask "synapse" do
  version "1.19.1"
  sha256 "9c494076747d69b4865daf1b360dcb03467323117653400a20de27fd79b1afc1"

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
