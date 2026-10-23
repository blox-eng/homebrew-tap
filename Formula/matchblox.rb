# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.19.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.19.0/matchblox-darwin-arm64"
      sha256 "1c2d441259bf4951c6d0334073ccee41e0e7da8334451c9081b9a12745220082"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.19.0/matchblox-darwin-amd64"
      sha256 "c67e9171df27b225d90b79cfb364217bcd9abaf3dc087787b34ad60c4e10a6c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.19.0/matchblox-linux-arm64"
      sha256 "c9e65f7556cc9f6170232b2a9716960c83472263bf196993ed09fc0077c58502"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.19.0/matchblox-linux-amd64"
      sha256 "64405c3920511ad669e5dcaeaf7b316ef6d431f49807f4b831786cb81dd2ccff"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
