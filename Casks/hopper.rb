cask "hopper" do
  version "0.1.1"
  sha256 "67329eb967e372b65a1ba5fb640b61d6bd7116a3c975f6bf1952216ae5544862"

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
