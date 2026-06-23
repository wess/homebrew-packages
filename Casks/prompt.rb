cask "prompt" do
  version "0.3.1"
  sha256 "05f1cae9a6e748bbaeeb100b7822d7ac75eb0285bcbe2d7e8fa237dcf342ae90"

  url "https://github.com/wess/prompt/releases/download/v#{version}/Prompt.dmg"
  name "Prompt"
  desc "Fast, GPU-accelerated terminal with tabs, splits, themes, and live-reload config"
  homepage "https://github.com/wess/prompt"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Prompt.app"

  zap trash: [
    "~/Library/Application Support/Prompt",
    "~/Library/Preferences/io.wess.prompt.plist",
    "~/.config/prompt",
  ]
end
