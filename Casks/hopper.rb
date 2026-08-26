cask "hopper" do
  version "0.12.3"
  sha256 "eaa2a88c3539df2d02f4647dfad8ab020dd8f3b98b355a75971682df05d005a4"

  url "https://github.com/wess/hopper/releases/download/v#{version}/Hopper.dmg"
  name "Hopper"
  desc "Native container manager — Apple Containers on macOS, Docker or Podman on Linux"
  homepage "https://github.com/wess/hopper"

  depends_on arch: :arm64
  # The app runs on Sonoma against an engine you already have; Apple
  # Containers itself needs macOS 26, which Hopper reports in-app
  # rather than blocking the install over.
  depends_on macos: :sonoma

  app "Hopper.app"

  zap trash: [
    "~/Library/Application Support/Hopper",
    "~/Library/Preferences/io.wess.hopper.plist",
    "~/.hopper",
  ]
end
