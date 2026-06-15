cask "hopper" do
  version "0.5.0"
  sha256 "443bdfccaab2aa7b4b834735b2c0a5ea7159f897ce284a370025c4a1d78a9878"

  url "https://github.com/wess/hopper/releases/download/v#{version}/Hopper.dmg"
  name "Hopper"
  desc "Native Docker engine and manager — runs Docker in its own VM, no Docker Desktop"
  homepage "https://github.com/wess/hopper"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Hopper.app"

  zap trash: [
    "~/Library/Application Support/Hopper",
    "~/Library/Preferences/io.wess.hopper.plist",
    "~/.hopper",
  ]
end
