# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.34.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.34.0/matchblox-darwin-arm64"
      sha256 "16ef94a305806a765761eb98876fad6c8a73692bc38aebdc2fbcc3dcc513b26c"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.34.0/matchblox-darwin-amd64"
      sha256 "b01343e4c104e72bcf6cf0cbe64119291e174b2eae0304204d632fe0b58f074f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.34.0/matchblox-linux-arm64"
      sha256 "f1eb59eb1b9ea3137e7d73a036fdac670903063a66c61873d0f39b59a004af1d"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.34.0/matchblox-linux-amd64"
      sha256 "4cd527e0f205a9e30bad5e40777e1c874113284ccc2dfff263832d560d6ef350"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
