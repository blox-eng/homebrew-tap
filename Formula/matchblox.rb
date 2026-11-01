# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.30.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.30.0/matchblox-darwin-arm64"
      sha256 "3ba650c779899bb6bacb663d4727d42f9e95b7b16a681bf6cc24afaca5236c10"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.30.0/matchblox-darwin-amd64"
      sha256 "768991c9f0613b5d24ae33380e8a449ec8db51c6472ad587995c3191a16cad17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.30.0/matchblox-linux-arm64"
      sha256 "63a374cae9e3df57e3d6158a64b319b0b7b1f47a157dea9b06a555f3e5757382"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.30.0/matchblox-linux-amd64"
      sha256 "6ee8a481a5c997f3e7ecb63bddd9977eaf7871c0957c27bb84530579b8281575"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
