cask "prompt" do
  version "1.3.0"
  sha256 "88c883e4e661c1240ee65c20e2f6146fe40bd43217abc28c3b8a050ff40763f6"

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
