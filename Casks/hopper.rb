cask "hopper" do
  version "0.3.0"
  sha256 "2072429146a42aa22fcfcaabe10b52a60bb0445bc0aea10a0832f22338ba5b4d"

  url "https://github.com/wess/hopper/releases/download/v#{version}/Hopper.dmg"
  name "Hopper"
  desc "Native Docker engine and manager — runs Docker in its own VM, no Docker Desktop"
  homepage "https://github.com/wess/hopper"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Hopper.app"

  zap trash: [
    "~/Library/Application Support/Hopper",
    "~/Library/Preferences/io.wess.hopper.plist",
    "~/.hopper",
  ]
end
