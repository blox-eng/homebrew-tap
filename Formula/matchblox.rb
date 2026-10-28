# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.28.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.28.0/matchblox-darwin-arm64"
      sha256 "a5ba922827e4dd455406195b99de36cb83be66d72450889cc589d931839a2cce"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.28.0/matchblox-darwin-amd64"
      sha256 "a307b57b1fdb2ac0d7e8204e44139e923d4b28f73dc3dec0ab3f32c09e9a18fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.28.0/matchblox-linux-arm64"
      sha256 "79020a96b83d5a3f9c9d4154a0bc723bc2a3ba654c76fcd25b9c0270b3291764"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.28.0/matchblox-linux-amd64"
      sha256 "b395fd9d15338abe1e0f558c9376640503386dd65d8c37d0d600087177b1fd9d"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
