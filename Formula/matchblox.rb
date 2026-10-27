# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.25.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.25.1/matchblox-darwin-arm64"
      sha256 "0f718cfdc5ba312cb4008e62edc860b46fef5c7c912af3e4ea464c12cd844170"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.25.1/matchblox-darwin-amd64"
      sha256 "16facb51785329ea5867ad303253e9c7f48bc4e99f949b659d0b3cb347250872"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.25.1/matchblox-linux-arm64"
      sha256 "a3245cb5825793a2bd6d057234c94e7c76e25df606b7ea68dc710d00d6c19f5c"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.25.1/matchblox-linux-amd64"
      sha256 "46c4dca1d940a85da2263bf86a368a5529a7fbbc7de084a96493a1229129430a"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
