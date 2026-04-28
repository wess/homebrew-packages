class Ambry < Formula
  desc "Open-source, cross-platform database client"
  homepage "https://github.com/wess/ambry"
  version "0.2.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/wess/ambry/releases/download/v#{version}/ambry-darwin-arm64.tar.gz"
    sha256 "69c8496f011a7c916d3d6c4cf23627ee1880bb3cc8b7a25588dfc1c12abfd309"
  elsif OS.linux?
    url "https://github.com/wess/ambry/releases/download/v#{version}/ambry-linux-x64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    if OS.mac?
      prefix.install "Ambry.app"
      bin.write_exec_script prefix/"Ambry.app/Contents/MacOS/ambry"
    else
      bin.install "ambry"
    end
  end

  def caveats
    if OS.mac?
      <<~EOS
        Ambry.app has been installed to:
          #{prefix}/Ambry.app

        To add it to Applications:
          ln -sf #{prefix}/Ambry.app /Applications/Ambry.app
      EOS
    end
  end

  test do
    assert_predicate bin/"ambry", :exist?
  end
end
