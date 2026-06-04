class Butter < Formula
  desc "Lightweight desktop app framework with native webview and TypeScript"
  homepage "https://github.com/wess/butter"
  version "1.6.2"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/wess/butter/releases/download/v#{version}/butter-darwin-arm64.tar.gz"
    sha256 "ebea401a16b3d3d35c6301d05ffec269b98182674dd0d503770498a7bad6c4c5"
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/butter/releases/download/v#{version}/butter-linux-arm64.tar.gz"
      sha256 "6e5d57fa2357c78cd3d2a5b5011b077ac2bb40a6eca87edb76e49a95edb7b14d"
    end
    on_intel do
      url "https://github.com/wess/butter/releases/download/v#{version}/butter-linux-x64.tar.gz"
      sha256 "498f293aacf4c30b5faf44be36657d572df04b9c3ae800b59ce6f22bb8360d8e"
    end
  end

  def install
    bin.install "butter"
  end

  test do
    assert_match "Usage: butter <command>", shell_output("#{bin}/butter")
  end
end
