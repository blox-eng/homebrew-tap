# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.40.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.1/matchblox-darwin-arm64"
      sha256 "c81b44d574b76af47e121e8a8e12dcda4c9a46a92136cbf4f3c4f94f6d84d4f1"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.1/matchblox-darwin-amd64"
      sha256 "ad555c9b0f4313a38c057aed7a35aafd577e3150b4dde9d73e67b457b9f48ff8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.1/matchblox-linux-arm64"
      sha256 "8b57adca0d2b516573c6267b3981e736afea3d7a27adad365ddefb6bf5e5f1e8"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.1/matchblox-linux-amd64"
      sha256 "fbe3ea551f08c2c1ff17ff4fb638698f2b5c4cd3539bf4d3bb64f367a446a609"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
