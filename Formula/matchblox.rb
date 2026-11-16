# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.47.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.47.0/matchblox-darwin-arm64"
      sha256 "851d3c2a418e662c0d66704a1b7145cb9d1270b17f201787df25ebb98a06cb1e"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.47.0/matchblox-darwin-amd64"
      sha256 "02c1679899cc3912c47c81d6fbb4ccf6363441c30cb733952d6fd7d1e881a82a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.47.0/matchblox-linux-arm64"
      sha256 "82a5878d24a3f15ed19674dfa63bce19da2a2623b333ad7b261f4d55a126b702"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.47.0/matchblox-linux-amd64"
      sha256 "597468aa7a9c1be8582a2459eac701d41536b3e75c5d87a014a78d60966ebbc7"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
