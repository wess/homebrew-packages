cask "prompt" do
  version "1.17.0"
  sha256 "dcf537f97245f7b1c9672cae2b8d82baf95d3356c4c5be4af5be479bf8f58652"

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
