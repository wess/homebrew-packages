cask "ambry" do
  version "1.0.3"
  sha256 "7d8e896794fdc4c95ccf1cd097b36bbc5a85164e5ebb9828f48e8d912adbc0b6"

  url "https://github.com/wess/ambry/releases/download/v#{version}/Ambry.dmg"
  name "Ambry"
  desc "Open-source, cross-platform database client"
  homepage "https://github.com/wess/ambry"

  depends_on arch: :arm64

  app "Ambry.app"

  zap trash: [
    "~/Library/Application Support/Ambry",
    "~/Library/Preferences/io.wess.ambry.plist",
  ]
end
