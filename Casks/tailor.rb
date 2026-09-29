cask "tailor" do
  version "0.3.1"
  sha256 "85d77823f12e188a7e221bb2b5394ccbae97d62c2176d8c6e1cb4131f884d305"

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
