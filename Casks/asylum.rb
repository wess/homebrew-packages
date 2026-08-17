cask "asylum" do
  version "1.2.0"
  sha256 "7997e2bf9f3df32f0521c3fad2c55486533ea408e2ceae02d6de5a3d680aa4d3"

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
