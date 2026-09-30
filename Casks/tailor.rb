cask "tailor" do
  version "0.4.0"
  sha256 "5421cc398ea46ccc805f6339b996e467f642c716e438d6f950c93090ebb05356"

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
