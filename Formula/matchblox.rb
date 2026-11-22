# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.56.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.56.1/matchblox-darwin-arm64"
      sha256 "b34abbf376d2430e4e0ac4b7e8ab7e7aa40b01c5c622595ee4a5f4f05fcf0d77"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.56.1/matchblox-darwin-amd64"
      sha256 "19b41bc594ecff60db2b440ce107437475bda841369cc95f93073b1d66412500"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.56.1/matchblox-linux-arm64"
      sha256 "617907267f64f99bccf09c36fd7d2189b98c8f774e492133936b389e051eae6a"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.56.1/matchblox-linux-amd64"
      sha256 "438115cb8ba4d084fd483ca72ec4835627f2d9253d5158a2ae651d59c4de3d75"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
