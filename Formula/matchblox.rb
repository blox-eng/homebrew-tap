# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.46.3. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.3/matchblox-darwin-arm64"
      sha256 "258c436f0f6392a35a74371d2e492d8ea65385809f17eefcda00e1eb4724186c"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.3/matchblox-darwin-amd64"
      sha256 "42b47b7c6212d8f2d5175031554617b93a5278450a8ac7628ff8e1fe4b173720"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.3/matchblox-linux-arm64"
      sha256 "da191fb1fb7317bb31c97b799d3c6f0c62252698d40eac185750250766d7b93a"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.3/matchblox-linux-amd64"
      sha256 "a02943f06ab2ff823a3cbf5c0a32a577741892dbd8ac752ffc57070bd4f8deb8"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
