# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.38.2. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.38.2/matchblox-darwin-arm64"
      sha256 "b3d0238cd995025011bf28029fa2c1ded3f0ad8288a420d20af19ac0fe73315c"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.38.2/matchblox-darwin-amd64"
      sha256 "576cdda3aadb542e82c730fe1fa5d22fb6ca75cae987f82971c324af5a5310b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.38.2/matchblox-linux-arm64"
      sha256 "3759b5344243fac33cb16d6c0606751132a849cf5efa7cea3f6453ee734ce5bf"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.38.2/matchblox-linux-amd64"
      sha256 "60b26317054050320fd06c3df51752880bb41a3ce6067df62fcc8d93e2195269"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
