class Ainz < Formula
  desc "Terminal-native agent harness and session multiplexer"
  homepage "https://wess.io/ainz/"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.7.0/ainz-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "25a040089b17af3ac5e1501d990f2597066060ece0b19165cc50b9b35b620b8f"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.7.0/ainz-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "c4721212a4a8fc560d4bf0ab6dd5f6983ad9e827033fab9095b76f188661753b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wess/ainz/releases/download/v0.7.0/ainz-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba64b4f5d0a1d8a58bfeb56205b9b4b06ca56eac601dc630b626cba37ece5aa2"
    end
    on_intel do
      url "https://github.com/wess/ainz/releases/download/v0.7.0/ainz-0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c44cc5f2b7b309e2f452a48051a17607d8cd146381aa55be1505b3d905e04187"
    end
  end

  def install
    bin.install "ainz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ainz --version")
  end
end
