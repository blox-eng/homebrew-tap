# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.38.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.38.1/matchblox-darwin-arm64"
      sha256 "5b501bf47e5ff1b59fe03e390ea9d91cff595b0ecd1b087ba147d7b017281396"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.38.1/matchblox-darwin-amd64"
      sha256 "4f6ed007a4e753c8b881a09e52408486dc40131e11ff45f496dc077843f5c1e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.38.1/matchblox-linux-arm64"
      sha256 "0aea3457f30a3c114ec0f2d991c18ab98fe9f2acbdd7c4e3f8e0af990cbd69eb"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.38.1/matchblox-linux-amd64"
      sha256 "a2aafff0b86bea024117affd9365b81afa4acf2ea2c5cda35bd5c78ad614ff7f"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
