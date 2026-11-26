# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.64.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.64.0/matchblox-darwin-arm64"
      sha256 "c89a339e14eaf3b6a9cea2db752ba3ffb603eca179bfe5ae4250c7700366b5b9"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.64.0/matchblox-darwin-amd64"
      sha256 "b9cc2fb56ab7a68ac9f398470e4c38ac9d0705f3255528ce3a676da5775edf5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.64.0/matchblox-linux-arm64"
      sha256 "bdf8e42b47eb666730b9083c813a390218bdf90a783a992575e806c54ebe94e9"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.64.0/matchblox-linux-amd64"
      sha256 "d49321c7bce39c0472123eb0054b7c35f7f78db2a90da9ae2e66fb8e90454f7a"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
