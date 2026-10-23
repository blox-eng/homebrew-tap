# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.21.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.21.0/matchblox-darwin-arm64"
      sha256 "75758a468b82ff584dae2162325d029a2430da736927e6cdce3c4b8a3848caab"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.21.0/matchblox-darwin-amd64"
      sha256 "a7cbd0022e09fa3009a11db752dc53a60f8b7e06e2b0917d73ccd35ff0f32145"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.21.0/matchblox-linux-arm64"
      sha256 "8fd1efc4e165d95c6f326e3c62632850d163cb1451f2d56344ebb730fecfe04d"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.21.0/matchblox-linux-amd64"
      sha256 "428165a8ab40a6d1c06a129218ed2562e0f93d540bdab4b537044628337238dc"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
