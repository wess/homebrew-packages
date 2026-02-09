class Stim < Formula
  desc "A little language to make prompts more program-y"
  homepage "https://github.com/wess/stim"
  version "1.0.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/stim/releases/download/v#{version}/stim-darwin-x64"
      sha256 "eb60ef966d040934b1dbf2c2548da90604c9c4f1c33024e62411d654c752042b"
    else # ARM
      url "https://github.com/wess/stim/releases/download/v#{version}/stim-darwin-arm64"
      sha256 "3f22594419de50968d2a908837d85337bd82b4804d81fe056255689f6e70417a"
    end
  elsif OS.linux?
    url "https://github.com/wess/stim/releases/download/v#{version}/stim-linux-x64"
    sha256 "533f46c965719d7e923e56dc3a69bd4543fb1089c6ef0c7f28e2714fbf2bf8fd"
  end

  def install
    if OS.mac?
      if Hardware::CPU.intel?
        bin.install "stim-darwin-x64" => "stim"
      else
        bin.install "stim-darwin-arm64" => "stim"
      end
    elsif OS.linux?
      bin.install "stim-linux-x64" => "stim"
    end
  end

  test do
    assert_match "Stim v#{version}", shell_output("#{bin}/stim")
  end
end
