# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.31.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.31.0/matchblox-darwin-arm64"
      sha256 "484c6cd077240f8b0839ad229cc9b3534940ac78b3624d70daf9e1d583ee51d0"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.31.0/matchblox-darwin-amd64"
      sha256 "8e4efcaa42428cbc1bfb9e89d7302ad0f3a612b8434aca188acc9e9e1cc14c9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.31.0/matchblox-linux-arm64"
      sha256 "75a68bd62a19a96f7aacc7d3488edb6f44bb9a4505b91cbd35f6e8ff858db387"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.31.0/matchblox-linux-amd64"
      sha256 "244ca02f854a3fb120508146a5331296b1683ca90d67f9504e3416ac8c01fe26"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
