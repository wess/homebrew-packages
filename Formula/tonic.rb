class Tonic < Formula
  desc "Elixir-to-native compiler with an LLVM backend and process runtime"
  homepage "https://wess.io/tonic/"
  version "0.1.1-beta.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wess/tonic/releases/download/v0.1.1-beta.2/tonic0.1.1-beta.2.macosarm64.tar.gz"
      sha256 "6203443a5f9d6d77eb082e131efff0d372889d8c9afd229f7e07a1da51371407"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wess/tonic/releases/download/v0.1.1-beta.2/tonic0.1.1-beta.2.linuxx64.tar.gz"
      sha256 "ca483c4279c1ec5c9052bc83ec4317672853e590f8116854237430a9c53a715a"
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
