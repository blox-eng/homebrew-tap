# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.67.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.67.0/matchblox-darwin-arm64"
      sha256 "6f00689cf6f653096eb5ce2a65e4175a2022050102c36d5bb4f645f36668f381"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.67.0/matchblox-darwin-amd64"
      sha256 "9e82c2e3a62ef514ca4a2a4f128ac5e10c025e300075697d4dda62f4c822116c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.67.0/matchblox-linux-arm64"
      sha256 "4f457df04ab64ac0bcf50b360a8c61fbcef2d7f7e585f645b61e75b03b94a31e"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.67.0/matchblox-linux-amd64"
      sha256 "b648a3817cb8882a52ad57a99bbf92621f7895751d7d45e06c86622e072d52c0"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
