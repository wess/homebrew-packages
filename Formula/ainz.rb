class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.3.1/ainz-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "858eb8732f01e41a4222ce363e5b5eaf34513702f7101d49726bb3b0e8a36547"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.3.1/ainz-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "07e60349964c2a0ea658c53f72cfc354de98c38468c7a37fe37d400d51e61236"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.3.1/ainz-0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f3166edf905439f176f7e8a425c4f450f975cc23b73799a93fbbe2edc5142470"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.3.1/ainz-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1a0b5e69682bc25c30a5ffbd643d104d6429c1b3e56b2d7c13c9ff709bf9d18"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
