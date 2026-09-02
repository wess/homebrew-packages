cask "sinclair" do
  version "1.34.0"
  sha256 "e73b1e4c3caac1f390202e89bf0d403c2fb9bf140a1bb468651e781235ad1808"

  url "https://github.com/wess/sinclair/releases/download/v#{version}/Sinclair.dmg"
  name "Sinclair"
  desc "Fast, GPU-accelerated terminal with tabs, splits, themes, and live-reload config"
  homepage "https://github.com/wess/sinclair"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Sinclair.app"

  zap trash: [
    "~/.config/sinclair",
    "~/Library/Application Support/Sinclair",
    "~/Library/Preferences/io.wess.sinclair.plist",
  ]
end
