# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.63.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.63.0/matchblox-darwin-arm64"
      sha256 "6755b4773a4e0581157fc4d6131d164c66f55533c7c10142bffd247458210daa"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.63.0/matchblox-darwin-amd64"
      sha256 "cf77565bad11b02226b73ed9f0e6e80706ae16bcfb518ed38795dc2601ce7aa7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.63.0/matchblox-linux-arm64"
      sha256 "ea5e6d68b46a3e0fa5f9b698dd6aaa81a6f4613bf775034592e82f079c73db0b"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.63.0/matchblox-linux-amd64"
      sha256 "09aa683bf77e45acf43562e08aa5c9cfd753080d9c2c9078ee86895fe0e45c41"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
