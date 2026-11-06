# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.33.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.33.0/matchblox-darwin-arm64"
      sha256 "ded2555e039cb3402145108be8a12fc642c0c4ebb3bb51eea167f9c590454e9a"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.33.0/matchblox-darwin-amd64"
      sha256 "f3b6da81d2082dee9ea552bab7de5d8e2abb8321ccb74fd10596023734d8744d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.33.0/matchblox-linux-arm64"
      sha256 "94ea844384533fe211936ce683aec62e5c7a9df2d79ad55752e7bb2c45fdaa11"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.33.0/matchblox-linux-amd64"
      sha256 "c77e3dd7fd731c375de56c389503d442ed064fdffa531f482eca1434cbdbe421"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
