cask "tailor" do
  version "0.4.3"
  sha256 "3528181119d6819f104d525329f85e0467e3d08fd8a57970749e47861d8e701b"

  url "https://github.com/wess/tailor/releases/download/v#{version}/Tailor.dmg"
  name "Tailor"
  desc "Visual interface builder for gpui: design it, run it, take the Rust"
  homepage "https://github.com/wess/tailor"

  depends_on macos: :big_sur

  app "Tailor.app"
  # The MCP server ships beside the app inside the bundle; this is
  # what puts it on PATH for an agent that wants to drive Tailor.
  binary "#{appdir}/Tailor.app/Contents/MacOS/tailor-mcp"

  zap trash: [
    "~/Library/Application Support/tailor",
    "~/Library/Preferences/io.wess.tailor.plist",
    "~/Library/Saved Application State/io.wess.tailor.savedState",
  ]
end
