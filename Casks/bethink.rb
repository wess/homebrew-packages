cask "bethink" do
  version "1.5.0"
  sha256 "0e18d7e44e4245791bf40520d5e25dfde609de06c87a40cce955643fa466aec1"

  url "https://github.com/wess/narrative/releases/download/v#{version}/Bethink.dmg"
  name "Bethink"
  desc "Native Markdown knowledge base where every note is a file you own"
  homepage "https://github.com/wess/narrative"

  depends_on arch: :arm64

  app "Bethink.app"

  zap trash: [
    "~/Library/Application Support/Bethink",
    "~/Library/Preferences/io.wess.bethink.plist",
  ]
end
