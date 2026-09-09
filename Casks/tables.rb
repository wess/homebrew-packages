cask "tables" do
  version "0.3.0"
  sha256 "85bdf4ac839b9ca7353efa5db2b0179d4cfd7f7ae4af18146412ea29812a263f"

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
