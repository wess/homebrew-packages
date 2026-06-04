cask "hopper" do
  version "0.1.2"
  sha256 "15bcd727e252f2ff9f4716aca10543446747de1b8023cfa15a752b4ee35a1c67"

  url "https://github.com/wess/hopper/releases/download/v#{version}/Hopper.dmg"
  name "Hopper"
  desc "Native desktop client for managing Docker"
  homepage "https://github.com/wess/hopper"

  depends_on arch: :arm64

  app "Hopper.app"

  zap trash: [
    "~/Library/Application Support/Hopper",
    "~/Library/Preferences/io.wess.hopper.plist",
  ]
end
