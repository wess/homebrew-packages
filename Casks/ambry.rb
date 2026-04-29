cask "ambry" do
  version "0.2.2"
  sha256 "26b4968616d4051bce7cd74219409cbb83a66b0f952cdfca1131496fd3ecc341"

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
