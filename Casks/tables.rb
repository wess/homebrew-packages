cask "tables" do
  version "0.3.1"
  sha256 "d249c69df47fb9f49d0721ec0117f47a24e827173131f6c4cb3f1c335441fb74"

  url "https://github.com/wess/tables/releases/download/v#{version}/Tables.dmg"
  name "Tables"
  desc "Fast, modern database client for Postgres, MySQL, and SQLite"
  homepage "https://github.com/wess/tables"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Tables.app"

  zap trash: [
    "~/.tables",
    "~/Library/Application Support/Tables",
    "~/Library/Preferences/dev.tables.app.plist",
  ]
end
