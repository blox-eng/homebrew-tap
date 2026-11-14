# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.44.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.44.0/matchblox-darwin-arm64"
      sha256 "fa3e2130ce7bdf01f51458d452030be25f69fff526b58280d0be7782c16d12d8"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.44.0/matchblox-darwin-amd64"
      sha256 "9d8953b244d098d9b46daaf2a2a59c1d16a0be49c0e4f68faf245d7239661577"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.44.0/matchblox-linux-arm64"
      sha256 "1046dd1d33a3571a9db9bd459fcded0985512301db011465b243638df08b7acd"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.44.0/matchblox-linux-amd64"
      sha256 "b4ebc7935d7e3f86922c5be1dc0ed4b688f157a3416f53134ac13182c4b658e0"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
