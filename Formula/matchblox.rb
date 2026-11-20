# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.53.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.53.1/matchblox-darwin-arm64"
      sha256 "21878a59a293a52bd3f0c1488ff6ec163581e49867fed6fda7c6b924016b98e2"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.53.1/matchblox-darwin-amd64"
      sha256 "ce636114d3bf6900427f891febc5995def68872c98b5a8ae419849787f0ffcfd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.53.1/matchblox-linux-arm64"
      sha256 "f5857d9d56b0907e657911adc2baf992afe6690db7953fe144641ffbc574d2e9"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.53.1/matchblox-linux-amd64"
      sha256 "0f609468e89e6daafe0350b6c7fbbf899c3b889a668bb5cfd1ee617cdcf45b91"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
