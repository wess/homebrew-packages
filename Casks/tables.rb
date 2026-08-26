cask "tables" do
  version "0.2.1"
  sha256 "c2dc1834d23793e38dd1afe6f224af5b5773f5bbf5c1897ffc2126a83dc40e1d"

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
