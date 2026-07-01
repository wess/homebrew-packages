cask "prompt" do
  version "1.6.0"
  sha256 "53d5372fbf7b7bd5de11ca09c53a84629671c7fb601e7c3df7bf9cfd660bcf94"

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
