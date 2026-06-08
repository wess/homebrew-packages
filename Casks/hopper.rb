cask "hopper" do
  version "0.4.0"
  sha256 "af481ccb3209d187b773a1ce64bb46185259a3411d5529342220b92b32ada4dd"

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
