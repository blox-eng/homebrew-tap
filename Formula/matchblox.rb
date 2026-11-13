# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.43.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.43.1/matchblox-darwin-arm64"
      sha256 "99d2b43d78c4a4862b0e8a1f36cdff9b79d8b12c936f49ebd8bdd2d70dfc3b13"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.43.1/matchblox-darwin-amd64"
      sha256 "55a7908a7afc89550ef091b7c156dfbf7058d3b818408e1c053bd77b7add2225"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.43.1/matchblox-linux-arm64"
      sha256 "82de7a11920477c5be98dabeb050982a4707f65b79eb2854ed634c5bb71d151e"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.43.1/matchblox-linux-amd64"
      sha256 "7429e68b3d6bae5e68fdd050a5f25e37858dccec5360f821f1f2cdb2d1f1812a"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
