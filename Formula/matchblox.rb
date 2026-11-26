# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.63.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.63.1/matchblox-darwin-arm64"
      sha256 "d1991c9d0bbe0a3059c7a97049321a7637a4f818e8d337434226b768087b1a59"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.63.1/matchblox-darwin-amd64"
      sha256 "711e7d9a4925877119a23ded86820ce90ff1af817d08c683f8e9fb9efc0a33cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.63.1/matchblox-linux-arm64"
      sha256 "1858d0919be8c261f75e97e6bd6be4713ac04ef9d5514fedb48e1b17bea0a444"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.63.1/matchblox-linux-amd64"
      sha256 "af2a26d9534de1e1124297e4373dff8df1f05440e8d194c1aa2d5357db42e259"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
