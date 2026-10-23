# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.20.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.20.0/matchblox-darwin-arm64"
      sha256 "4ca8cc26c26dc9b62fd1fcc0bf74f66d41694514ab624bce4608cb2137221107"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.20.0/matchblox-darwin-amd64"
      sha256 "716abd78d3c899fe1a23c674488e37adf928161fc78e8ddec65210076f024c10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.20.0/matchblox-linux-arm64"
      sha256 "ebd1d993d3b6ab747f4aad5ffa1335b804991974aa8e10d2e939f9a1214818e6"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.20.0/matchblox-linux-amd64"
      sha256 "8f36f0a8ead33934810309531168492b6b34bb55d646cbaf828e7b13daccadc5"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
