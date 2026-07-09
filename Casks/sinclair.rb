cask "sinclair" do
  version "1.26.0"
  sha256 "1f5b429a00ced6a15b15d6f2cdb552b11222b1ed71a6f6dfa2451d4b3501e402"

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
