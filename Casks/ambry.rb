cask "ambry" do
  version "0.2.3"
  sha256 "ec1fbd92374a00ca49a4720a50022e0c06b434552585a2e8e5c500a1c64a08a7"

  url "https://github.com/wess/ambry/releases/download/v#{version}/ambry-darwin-arm64.tar.gz"
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
