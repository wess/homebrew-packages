cask "tables" do
  version "0.1.0"
  sha256 "007bb0843d78f4815ab47883a8e1725d35faea004993696a9d87134db3e6f4aa"

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
