cask "ambry" do
  version "1.0.7"
  sha256 "9b9a67aa899f07f2c22a3fe0f3cb7ba022da0adf2c06b2cdaff99cdb1fb5f1e4"

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
