cask "asylum" do
  version "0.1.0"
  sha256 "d13d83acf99f4ca3d8f6f49823ebd316bb718789fc6e64519ca48a0a0a19017d"

  url "https://github.com/wess/asylum/releases/download/v#{version}/Asylum.dmg"
  name "Asylum"
  desc "Agent Development Environment: run a fleet of AI coding agents in parallel"
  homepage "https://github.com/wess/asylum"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Asylum.app"

  zap trash: [
    "~/Library/Application Support/Asylum",
    "~/Library/Preferences/dev.asylum.app.plist",
    "~/.config/asylum",
  ]

  caveats <<~EOS
    Asylum is not yet signed or notarized, so Gatekeeper will refuse to
    open it. Either open System Settings -> Privacy & Security and
    choose "Open Anyway", or clear the quarantine flag:

      xattr -dr com.apple.quarantine "#{appdir}/Asylum.app"
  EOS
end
