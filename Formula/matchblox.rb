# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.22.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.22.0/matchblox-darwin-arm64"
      sha256 "627fed48439ea6db2cdbd13bc3ab7fb8ad5692a99ab07d1906dac698b85587f6"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.22.0/matchblox-darwin-amd64"
      sha256 "ec4f4fb4e0f74303583a8ec284ad86d33209d71186dc1344cf2f9e84d3d79800"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.22.0/matchblox-linux-arm64"
      sha256 "cd4cd9495c1fff9a824d1ed468a23e89bc30d0eb07227f55ea951e99a1e7263a"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.22.0/matchblox-linux-amd64"
      sha256 "491d7b78b769b1c7344e64e5eda78f351e6cd28cc688febace0492dc1d2240a8"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
