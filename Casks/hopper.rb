cask "hopper" do
  version "0.13.0"

  name "Hopper"
  desc "Native container manager — Apple Containers on macOS, Docker or Podman on Linux"
  homepage "https://github.com/wess/hopper"

  on_arm do
    url "https://github.com/wess/hopper/releases/download/v#{version}/Hopper.dmg"
    sha256 "dc15b8618904482e0713c4c9d2837c0966f118bb8d54b65583df323109297349"
  end
  on_intel do
    url "https://github.com/wess/hopper/releases/download/v#{version}/Hopper-0.13.0-intel.dmg"
    sha256 "dff7db43e285a48c7bf68ef1ea5fd32f0367c639946267d2156618d1c31ef74e"
  end

  # The app runs on Sonoma against an engine you already have; Apple
  # Containers itself needs macOS 26, which Hopper reports in-app
  # rather than blocking the install over.
  depends_on macos: :sonoma

  app "Hopper.app"

  zap trash: [
    "~/Library/Application Support/Hopper",
    "~/Library/Preferences/io.wess.hopper.plist",
    "~/.hopper",
  ]
end
