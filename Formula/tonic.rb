class Tonic < Formula
  desc "Elixir-to-native compiler with an LLVM backend and process runtime"
  homepage "https://wess.io/tonic/"
  version "0.1.0-beta.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wess/tonic/releases/download/v0.1.0-beta.3/tonic0.1.0-beta.3.macosarm64.tar.gz"
      sha256 "ab72ab8e5d9a8a1038baadea941ffd855bd2aa485bd647ea919035fdfae28688"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wess/tonic/releases/download/v0.1.0-beta.3/tonic0.1.0-beta.3.linuxx64.tar.gz"
      sha256 "e08570c132ae9eddddad3aa354db1d09d6bc05acf7fbb268666096fbd2bbe987"
    end
  end

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :sonoma
  end

  on_linux do
    depends_on arch: :x86_64
    depends_on "llvm"
  end

  def install
    libexec.install "bin", "lib", "share"
    pkgshare.install "hello.exs"
    doc.install "README.md", "docs", "licenses", "notice", "manifest.json"
    # compiles and links with the Xcode Command Line Tools clang on macOS
    env = {}
    env[:TONIC_CC] = "${TONIC_CC:-#{Formula["llvm"].opt_bin}/clang}" if OS.linux?
    (bin/"tonic").write_env_script libexec/"bin/tonic", env
  end

  def caveats
    <<~EOS
      For the Mix tasks (mix tonic build|run|check):
        mix archive.install #{opt_libexec}/share/tonic/tonic.ez --force
    EOS
  end

  test do
    assert_match "tonic #{version}", shell_output("#{bin}/tonic --version")
    system bin/"tonic", "build", pkgshare/"hello.exs", "-o", testpath/"hello"
    assert_equal "Hello, world!", shell_output(testpath/"hello").strip
  end
end
