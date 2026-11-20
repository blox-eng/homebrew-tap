# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.51.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.51.0/matchblox-darwin-arm64"
      sha256 "feff83d9800bc37e0460ad6743164381ce54906d998d339960411b045e99210b"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.51.0/matchblox-darwin-amd64"
      sha256 "b938d55c17a1bb851f23bf92bfba4ce34156a12965a3d6b301e54bdcf09dbe30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.51.0/matchblox-linux-arm64"
      sha256 "9a1d08621e1983574eba3bff977107e04581afe1dcedbfe0ac93b78bd99e4781"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.51.0/matchblox-linux-amd64"
      sha256 "467357ca2e2dbefd109ed611449877cb419f13d530c6774305cd3e4292c23097"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
