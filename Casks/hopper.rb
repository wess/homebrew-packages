cask "hopper" do
  version "0.16.1"

  name "Hopper"
  desc "Native container manager for Apple silicon Macs"
  homepage "https://github.com/wess/hopper"

  url "https://github.com/wess/hopper/releases/download/v#{version}/Hopper.dmg"
  sha256 "e3bd244c3dd806a9b1f4826dae5a186bd9aa9d6b774a5a84725c5e1376e4dc84"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Hopper.app"

  zap trash: [
    "~/Library/Application Support/Hopper",
    "~/Library/Preferences/io.wess.hopper.plist",
    "~/.hopper",
  ]
end
