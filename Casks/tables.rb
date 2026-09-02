cask "tables" do
  version "0.2.2"
  sha256 "e22a4b862ddb43f27aeefe98213c168927c6bd0e3fc3588fd4d3b7e0286afd1a"

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
