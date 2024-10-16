class Opm < Formula
  desc "A CLI app to manage OpenAPI projects"
  homepage "https://github.com/wess/opm"
  url "https://github.com/wess/opm/archive/refs/heads/main.zip"
  version "0.0.1"
  sha256 :no_check

  depends_on "bun" => :build

  def install
    # Download the repo and build it
    system "bun", "install"
    system "bun", "run", "release"

    # Install the executable
    bin.install "dist/opm"
  end

  test do
    # Check if the opm command is available
    system "#{bin}/opm", "--help"
  end
end
