# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.43.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.43.0/matchblox-darwin-arm64"
      sha256 "eea9186b772be7d0e563b486465296ae7822446d216acd57ab62317bf834487f"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.43.0/matchblox-darwin-amd64"
      sha256 "6a4b0e6775340c58c1811b9c665ad27c6604f4c46d82d531bc5a0b5b0f8018b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.43.0/matchblox-linux-arm64"
      sha256 "f34dbc1c18a09a4827a64425c4a15f9ecca6f2b5c6802db09dd7e93e626a27e7"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.43.0/matchblox-linux-amd64"
      sha256 "3fbb14f44e53b33908648556080d0a542574b57e2fc9f5991fe35501cf55e624"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
