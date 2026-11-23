# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.58.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.58.0/matchblox-darwin-arm64"
      sha256 "4986df0ec480820e32bec8052db621c724985711c44e9bfcb400d34d56a46e5a"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.58.0/matchblox-darwin-amd64"
      sha256 "2139ffaceea15e8ba0a9101335775aadd6b0d19126c4dc87bec7fca775280615"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.58.0/matchblox-linux-arm64"
      sha256 "237960214ce88f521992e4c21c0a316d193a51d5e1a6b82b38a6a38f62e01ac6"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.58.0/matchblox-linux-amd64"
      sha256 "c4ea5e70e8aaffd226543f8cddc7dc02fe163c05b571007cb3db4261940dda15"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
