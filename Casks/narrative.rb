cask "narrative" do
  version "0.1.3"
  sha256 "e14c9ec9b4f2887c015a4170d45a1d4f3558fd01485b25a8906b69ca3d700ac3"

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
