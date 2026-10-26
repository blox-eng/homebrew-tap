# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.24.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.24.0/matchblox-darwin-arm64"
      sha256 "d22e6bdf06fc132a5303bd0bcb728af496c23ea19b7ada9c70572ccf4062b1be"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.24.0/matchblox-darwin-amd64"
      sha256 "a845f807067dc7d6f88d1cb6c01626ea7540f5e03e437d2a7d759f8189079c92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.24.0/matchblox-linux-arm64"
      sha256 "40fbbca88e099cc22d5363e6f2b4e7a33a7298b8286f1ca2b76657d4ac9357cc"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.24.0/matchblox-linux-amd64"
      sha256 "4bd4be82bb0bd5cf7b1816aaca6972b6419227ba2353364904b0fbe61d8b51c2"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
