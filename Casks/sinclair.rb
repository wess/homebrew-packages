cask "sinclair" do
  version "1.27.0"
  sha256 "864b75999bac2703000729e215eb4127e0724e9597197fae3b3a31aca9d3b82a"

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
