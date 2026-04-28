class Ambry < Formula
  desc "Open-source, cross-platform database client"
  homepage "https://github.com/wess/ambry"
  url "https://github.com/wess/ambry/releases/download/v0.2.2/ambry-darwin-arm64.tar.gz"
  version "0.2.2"
  sha256 "26b4968616d4051bce7cd74219409cbb83a66b0f952cdfca1131496fd3ecc341"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    prefix.install "Ambry.app"
    bin.write_exec_script prefix/"Ambry.app/Contents/MacOS/ambry"
  end

  def caveats
    <<~EOS
      Ambry.app has been installed to:
        #{prefix}/Ambry.app

      To add it to Applications:
        ln -sf #{prefix}/Ambry.app /Applications/Ambry.app
    EOS
  end

  test do
    assert_path_exists bin/"ambry"
  end
end
