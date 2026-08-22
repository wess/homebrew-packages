cask "hopper" do
  version "0.11.1"
  sha256 "337a1f1648f90dc8543cbd02cf162cef8f6562a162865ce7e78cb46d3b6d0cf9"

  url "https://github.com/wess/hopper/releases/download/v#{version}/Hopper.dmg"
  name "Hopper"
  desc "Native container manager — Apple Containers on macOS, Docker or Podman on Linux"
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
