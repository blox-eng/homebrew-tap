# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.48.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.48.0/matchblox-darwin-arm64"
      sha256 "d182aa6a2b50095b7b51e8b3e2c4f19f627359605789d063cccdd5a37bbcf77c"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.48.0/matchblox-darwin-amd64"
      sha256 "2b81c224b721c409f13f2e6ffc3dc218c72cb32cb9d17a41093f69d657372453"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.48.0/matchblox-linux-arm64"
      sha256 "a61ea31f68aef062b3db7bdb554d7b07302962b68adebe752e82ab255603e2ee"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.48.0/matchblox-linux-amd64"
      sha256 "cda3b23a8858a87ab58c514d9e7aabc0435189a6ded634eeda191fc19c0677bb"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
