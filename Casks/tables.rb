cask "tables" do
  version "0.3.5"
  sha256 "20582aa8da1cd97f0245cef1529229e23ecaa854a5f9bcb1bbbec331bd2b4910"

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
