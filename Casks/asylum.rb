cask "asylum" do
  version "0.1.1"
  sha256 "d7be2817aa9ed54e4497e09092b85c59998cb2f522131149d89b72d8807e144e"

  url "https://github.com/wess/asylum/releases/download/v#{version}/Asylum.dmg"
  name "Asylum"
  desc "Agent Development Environment: run a fleet of AI coding agents in parallel"
  homepage "https://github.com/wess/asylum"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Asylum.app"

  zap trash: [
    "~/Library/Application Support/Asylum",
    "~/Library/Preferences/dev.asylum.app.plist",
    "~/.config/asylum",
  ]
end
