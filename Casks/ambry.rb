cask "ambry" do
  version "1.0.5"
  sha256 "d4c9c4b536b31fb0015f0627199066f9638f692db23c8fe38f9970206c92868c"

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
