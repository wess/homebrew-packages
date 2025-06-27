class Zenoscript < Formula
  desc "Bringing Functional-ish to Typescript"
  homepage "https://github.com/wess/zenoscript"
  version "0.1.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/wess/zenoscript/releases/download/v#{version}/zenoscript-darwin-x64.tar.gz"
      sha256 "42a71067638506f01b899e8abf6f0e408d389d6eaa86bf23a6e42e462ad538ce"
    else # ARM
      url "https://github.com/wess/zenoscript/releases/download/v#{version}/zenoscript-darwin-arm64.tar.gz"
      sha256 "5480067890f3b323b9ae1c7e59b499a80c67c34674eccbc0717a76622c7beb4d"
    end
  elsif OS.linux?
    url "https://github.com/wess/zenoscript/releases/download/v#{version}/zenoscript-linux-x64.tar.gz"
    sha256 "3d1b4b0ea3aab764a5e7f1b9d197a43e378db9520a1af206f4f53d3944945dde"
  end

  def install
    bin.install "zeno"
  end

  test do
    # basic smoke test
    assert_match 1, 1
  end
end