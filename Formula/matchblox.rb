# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.18.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.18.0/matchblox-darwin-arm64"
      sha256 "32d87100a9603ca2e2aa7ecebfbbffdd5eea0c99729272c64b7da4f0ed2e1c8c"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.18.0/matchblox-darwin-amd64"
      sha256 "55fa3a18cfc4bdb3ed93052abdf484d0583a9fabe35b9488141d83327575bb9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.18.0/matchblox-linux-arm64"
      sha256 "696ee727b65ef388a881e8ff2f4ba0811721b756ad1ef0eb265a3254d67a42bb"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.18.0/matchblox-linux-amd64"
      sha256 "225d3b561c4fed9de605499a74971f1aaacb025742799a3f99d39b434126c719"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
