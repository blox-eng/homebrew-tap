# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.52.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.52.0/matchblox-darwin-arm64"
      sha256 "75f5c4bee575e27ce50f8ac3dbb987c54ca485dce2cf9abdad7e30a941582a01"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.52.0/matchblox-darwin-amd64"
      sha256 "3e3044f6e0afe6355230fc4482849e11e181d658f9f6bb7528325cb01ef14fd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.52.0/matchblox-linux-arm64"
      sha256 "49afc86cec8b4cbf408239ef47b6707a089249e28f0bc7648940c36224042b5e"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.52.0/matchblox-linux-amd64"
      sha256 "0f821c6803a29834c3a1cdeb566827774ba70c5f907212b8a42757f7d0ba9ee3"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
