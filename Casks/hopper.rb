cask "hopper" do
  version "0.7.0"
  sha256 "5b2004b23437f98c418faa8640eed33488687d28bd88d32dd23bca8eb0d1d1fb"

  url "https://github.com/wess/hopper/releases/download/v#{version}/Hopper.dmg"
  name "Hopper"
  desc "Native Docker engine and manager — runs Docker in its own VM, no Docker Desktop"
  homepage "https://github.com/wess/hopper"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Hopper.app"

  zap trash: [
    "~/Library/Application Support/Hopper",
    "~/Library/Preferences/io.wess.hopper.plist",
    "~/.hopper",
  ]
end
