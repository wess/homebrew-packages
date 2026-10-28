cask "sinclair" do
  version "1.38.0"
  sha256 "5b1f7e947b9e6df684334a4317e17372d3c0a5a491e012a9db7b325b59cffe0c"

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
