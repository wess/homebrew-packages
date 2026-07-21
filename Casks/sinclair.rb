cask "sinclair" do
  version "1.28.0"
  sha256 "39e0bfda65bc8f3115b31b3314776537078ca4f80e23c48386d3d43ccf41eedb"

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
