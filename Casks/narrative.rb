cask "narrative" do
  version "0.1.2"
  sha256 "0fdf85d447488f199362359b7e96ddb592d0ca1fe6d652d2e089830ad0e2e1d2"

  url "https://github.com/wess/narrative/releases/download/v#{version}/Narrative.dmg"
  name "Narrative"
  desc "Native Markdown knowledge base where every note is a file you own"
  homepage "https://github.com/wess/narrative"

  depends_on arch: :arm64

  app "Narrative.app"

  zap trash: [
    "~/Library/Application Support/Narrative",
    "~/Library/Preferences/io.wess.narrative.plist",
  ]
end
