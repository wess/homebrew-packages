cask "tables" do
  version "0.2.0"
  sha256 "4cba93b86c29d8e87d12db61aaa3688963b2ac8b30fbbd2790fdb6c54d740629"

  url "https://github.com/wess/tables/releases/download/v#{version}/Tables.dmg"
  name "Tables"
  desc "Fast, modern database client for Postgres, MySQL, and SQLite"
  homepage "https://github.com/wess/tables"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Tables.app"

  zap trash: [
    "~/Library/Application Support/Tables",
    "~/Library/Preferences/dev.tables.app.plist",
    "~/.tables",
  ]
end
