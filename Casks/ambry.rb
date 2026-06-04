cask "ambry" do
  version "1.0.6"
  sha256 "070d3ce745be6045036565a466762be991caeb571d9cadd411153b29da40e5c0"

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
