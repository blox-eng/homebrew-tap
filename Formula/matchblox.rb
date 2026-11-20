# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.51.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.51.1/matchblox-darwin-arm64"
      sha256 "a9f43fcf95bb80776a01c2c7b1fc6be49347eddb3142295dfe3ab1f1aa3a4d16"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.51.1/matchblox-darwin-amd64"
      sha256 "cf665b38c854106a2cd5a3e0cb005aa577e6ebbe7c298b3ad7cd2e81d51f4147"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.51.1/matchblox-linux-arm64"
      sha256 "cc84d4150f94fa1b6e6139d5411daa9bd97a093e9dfc9aad5f3661204a3bc17d"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.51.1/matchblox-linux-amd64"
      sha256 "7354aa1509fab531c4b66dd9a2f4e90de6a0145fce7788dbe292bc559fc949f0"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
