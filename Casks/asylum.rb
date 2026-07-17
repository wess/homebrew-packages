cask "asylum" do
  version "0.1.3"
  sha256 "929ad1677729a309f8ab0cdb4fd1961765c35c9c8d5e13e411a52fa1d1d7f1b0"

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
