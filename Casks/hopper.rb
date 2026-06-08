cask "hopper" do
  version "0.4.1"
  sha256 "44cf0bcaf3b7594a4dbecbd75f45cb787dc9966304bc971ee40990ba38105563"

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
