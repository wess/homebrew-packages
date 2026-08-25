cask "sinclair" do
  version "1.33.1"
  sha256 "7db34d8637aa9eddb77c67385925c77399b0b67a2d9e50476c59a067fa3a2561"

  url "https://github.com/wess/sinclair/releases/download/v#{version}/Sinclair.dmg"
  name "Sinclair"
  desc "Fast, GPU-accelerated terminal with tabs, splits, themes, and live-reload config"
  homepage "https://github.com/wess/sinclair"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Sinclair.app"

  zap trash: [
    "~/Library/Application Support/Sinclair",
    "~/Library/Preferences/io.wess.sinclair.plist",
    "~/.config/sinclair",
  ]
end
