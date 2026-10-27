cask "synapse" do
  version "1.14.5"
  sha256 "3098db6c2a452038342a98960f9fbdd070afbcd78782f74da3ca592c8b3ece18"

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
