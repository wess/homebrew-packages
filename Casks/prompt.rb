cask "prompt" do
  version "1.5.0"
  sha256 "4a140bdd9886d6dd47d5128a71a26a3b0f850fff5c1694d90cd25777820639ee"

  url "https://github.com/wess/prompt/releases/download/v#{version}/Prompt.dmg"
  name "Prompt"
  desc "Fast, GPU-accelerated terminal with tabs, splits, themes, and live-reload config"
  homepage "https://github.com/wess/prompt"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Prompt.app"

  zap trash: [
    "~/Library/Application Support/Prompt",
    "~/Library/Preferences/io.wess.prompt.plist",
    "~/.config/prompt",
  ]
end
