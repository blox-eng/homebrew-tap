# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.45.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.45.0/matchblox-darwin-arm64"
      sha256 "7b9fbe712d2861a25b51235eaea26f00b45b65329315dbadb7bd183e84142d41"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.45.0/matchblox-darwin-amd64"
      sha256 "edf65007f28b18d0221f9a791497a93d7769ad33666ffe82d01cee4dc3e4bf37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.45.0/matchblox-linux-arm64"
      sha256 "47d2ee70553a17fd16d0dd4f51a49a311a77c692a80094891374538f52d2cdc8"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.45.0/matchblox-linux-amd64"
      sha256 "65c0e1174ef5ccbb0fa0ac8282972976ec69dc81b8f705d2f955702ecbcef5e5"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
