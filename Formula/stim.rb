class Stim < Formula
  desc "A little language to make prompts more program-y"
  homepage "https://github.com/wess/stim"
  version "1.2.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/stim/releases/download/v#{version}/stim-darwin-x64"
      sha256 "884ab374b47bf4efd8d2a60ad9a49153de52af962bdc9d7da061a4d9051491de"
    else # ARM
      url "https://github.com/wess/stim/releases/download/v#{version}/stim-darwin-arm64"
      sha256 "858522d829136c5efebd9941a26f16c500b0998748fc105d1219d6356ee2b138"
    end
  elsif OS.linux?
    url "https://github.com/wess/stim/releases/download/v#{version}/stim-linux-x64"
    sha256 "b8ec5d987b9442ccea7f814fe9b90416bde3bdd692ff2c4095de7f60dd852aba"
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
