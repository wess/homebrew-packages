class Opm < Formula
  desc "A CLI app to manage OpenAPI projects"
  homepage "https://github.com/wess/opm"
  url "https://github.com/wess/opm/archive/refs/heads/main.zip"
  version "0.0.2"
  sha256 :no_check

  depends_on "bun" => :build

  def install
    # Locate the path to bun
    bun_path = `which bun`.chomp
    if bun_path.empty?
      odie "Bun is required but not installed or not in the PATH."
    end

    # Install dependencies and build the project
    system bun_path, "install"
    system bun_path, "run", "release"

    # Install the executable
    bin.install "dist/opm"
  end

  test do
    # Check if the opm command is available
    system "#{bin}/opm", "--help"
  end
end
