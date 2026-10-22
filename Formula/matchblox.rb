# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.17.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.1/matchblox-darwin-arm64"
      sha256 "0daa2e67eebb7a566acd6f1b90dd981f632f483f934a3133cfc39dc7088e2883"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.1/matchblox-darwin-amd64"
      sha256 "ff78be9bfb3dd838af41255798cb6f0081dc601b76f167590bbe31e08b8c2c7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.1/matchblox-linux-arm64"
      sha256 "00761e1f927ee268a696fba5dc118da62fb35c88ee2b85952fc812a829bb6d1e"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.1/matchblox-linux-amd64"
      sha256 "30b8b9bb60ffce32ffc839abe4e2bf3a43240cbaecd7392df4102bce8abd68db"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
