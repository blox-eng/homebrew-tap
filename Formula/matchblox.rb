# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.68.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.68.0/matchblox-darwin-arm64"
      sha256 "df5301efdc1173555fc90ecede35208b76cdd7a2764e3a880c88031c90a326e7"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.68.0/matchblox-darwin-amd64"
      sha256 "8cd2be9018dc760947adf4201ce1ef3eae87d3402be888d619c1e71698d66f3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.68.0/matchblox-linux-arm64"
      sha256 "72003407c778edd7af663fc5e4b3de5171399c991155767da08f49e092011c42"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.68.0/matchblox-linux-amd64"
      sha256 "61ea9353bd081412b9e130f468aa51c69672aa4e1d74b1157829a6e011409c1c"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
