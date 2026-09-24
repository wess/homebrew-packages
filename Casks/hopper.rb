cask "hopper" do
  version "0.13.1"

  name "Hopper"
  desc "Native container manager for Apple silicon Macs"
  homepage "https://github.com/wess/hopper"

  url "https://github.com/wess/hopper/releases/download/v#{version}/Hopper.dmg"
  sha256 "c5062cbf748d3b9f0e141de96ad46b432a317fcce6e6f4ff9b66fd6e14c67e73"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Hopper.app"

  zap trash: [
    "~/Library/Application Support/Hopper",
    "~/Library/Preferences/io.wess.hopper.plist",
    "~/.hopper",
  ]
end
