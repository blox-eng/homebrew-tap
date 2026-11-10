# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.39.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.39.1/matchblox-darwin-arm64"
      sha256 "48510323a3b0a69348f6ab6bb3aeee7e7b446dab3a440184e69f8cea6f697d82"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.39.1/matchblox-darwin-amd64"
      sha256 "bc99c85c1071e0fe6c9927ccf6165e18f41785b48f975c972e67c533b30580ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.39.1/matchblox-linux-arm64"
      sha256 "df3632a429f72390f05a77a581e2e6c4ba11f0f4120cf7699839162e2a74ae35"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.39.1/matchblox-linux-amd64"
      sha256 "7b3c9df74c5a67039d33b03245512f9599e772cf9e26d68864a3c6103d363110"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
