# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.33.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.33.1/matchblox-darwin-arm64"
      sha256 "80a07aa9bf222a49f81e5a57780c82f25cdeb6800d996a56d042a6fc443ca674"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.33.1/matchblox-darwin-amd64"
      sha256 "ce39a820bbf149ef646daddf42af5956e4b345d4e0d5340cc245e7cd41092c15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.33.1/matchblox-linux-arm64"
      sha256 "a3f422da9bd8f06c702fcabb66c94bf45e3828ed300df88ac081b295a1c4f075"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.33.1/matchblox-linux-amd64"
      sha256 "30f3a60feb92597850dc9f952df63954a9b57569c839cb22cbbd31437c7de054"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
