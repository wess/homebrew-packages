cask "asylum" do
  version "1.1.0"
  sha256 "8f0194dd457073fe13c3b8360bc8bd6a5a7bdda827840c949ae11e7d5adeb879"

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
