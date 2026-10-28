# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.26.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.26.1/matchblox-darwin-arm64"
      sha256 "b5e14b1aaf5ad5e8948ad550d6e56be7f8730596d94b3dddef8f3a7be6eb6c4e"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.26.1/matchblox-darwin-amd64"
      sha256 "143935a15dc33e129798e99cd9dd059a08f9fbcd89faf1ddac2c9417f76cb1e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.26.1/matchblox-linux-arm64"
      sha256 "aed05bb553ade76c0d488c5e12154479a7fd3cfa6fba746318af61682a374cc5"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.26.1/matchblox-linux-amd64"
      sha256 "b36d104e9d0c70b7a9ebc50183241703caa386c207ef081e4869da164ce22b59"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
