# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.36.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.36.0/matchblox-darwin-arm64"
      sha256 "71cea19582788a4ed2f12ccda8ca30d9304ff5146590ca0e43853fc5154130a1"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.36.0/matchblox-darwin-amd64"
      sha256 "90b4d272f04993aa331cf05ebd1e13d041bc2a725286531861a7f12487fbe627"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.36.0/matchblox-linux-arm64"
      sha256 "05b89cee97c4b3d183c2741c10d752c1778536f061937dcd1a5d548f77948e9c"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.36.0/matchblox-linux-amd64"
      sha256 "1bc208f034a500b0b0fc163d92001aaf4e441fefeda0a0370c01f3fe75c05ac7"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
