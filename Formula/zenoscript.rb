class Zenoscript < Formula
  desc "Bringing Functional-ish to Typescript"
  homepage "https://github.com/wess/zenoscript"
  version "0.0.1"

  if OS.mac?
    url "https://github.com/wess/zenoscript/releases/download/v#{version}/zenoscript-macos.tar.gz"
    sha256 "995337fc6dd1039b83f1daecb717c9e79996d3019ccc5040496cc85517f966eb"
  elsif OS.linux?
    url "https://github.com/wess/zenoscript/releases/download/v#{version}/zenoscript-linux.tar.gz"
    sha256 "bf97d84e6621e6c4178d71b424b2f1c7e2c54361735c0e484b330bace423f035"
  end

  def install
    bin.install "zeno"
  end

  test do
    # basic smoke test
    assert_match 1, 1
  end
end