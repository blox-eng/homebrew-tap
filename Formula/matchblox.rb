# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.41.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.41.0/matchblox-darwin-arm64"
      sha256 "2e9e733fe4553046b0f50ce70d813f5ebec6ab36f3b886456969dc5979e240ce"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.41.0/matchblox-darwin-amd64"
      sha256 "6850b749c336114090d9b4961daa37e80d53af3eee95b59c6beef54f2ae59634"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.41.0/matchblox-linux-arm64"
      sha256 "b3f3a9fcdcb2f13a611c7bee67202d163fcbab0bf9917d523be0685df0596366"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.41.0/matchblox-linux-amd64"
      sha256 "603e864abce432f6204054312ae4aa35eba2f7d1b91cf7ca5ead46b0c2b94ed6"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
