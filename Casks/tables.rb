cask "tables" do
  version "0.3.2"
  sha256 "f18947cc27334dad3f015420691b0fec003b9aa0e6abbac9d7ea175b406b56e8"

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
