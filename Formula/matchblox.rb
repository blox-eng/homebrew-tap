# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.26.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.26.0/matchblox-darwin-arm64"
      sha256 "20cc936a3d0fbf439b66c5dec120c3cde56761d2995c7c46e314edbb6182ea16"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.26.0/matchblox-darwin-amd64"
      sha256 "d059915017386c5556ac87a4c7658cb59b0b25eb364f13dd69adc787ef8ae32a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.26.0/matchblox-linux-arm64"
      sha256 "4d7a4c049fcfafe78c9dd3594073e07029ac28bbe293c881fdbb094a14f69c98"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.26.0/matchblox-linux-amd64"
      sha256 "4f4f7bccc1b655b7d4215ecac55db5417e30f9aad8d461b9e3fe1d32d2624abe"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
