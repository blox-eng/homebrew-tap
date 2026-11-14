# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.44.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.44.1/matchblox-darwin-arm64"
      sha256 "27addc64418b737b3b2ebe1c77b12906538b764cac6871ba0274e21dabeb32b2"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.44.1/matchblox-darwin-amd64"
      sha256 "071e701d033f2e0e29b17f6e92f10f03f4912a329584a5ae4439ff528d3e9910"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.44.1/matchblox-linux-arm64"
      sha256 "7ec73a7a4c6e5bd89a65f13c9d802341262e6e71ec92bd529846c782a520a262"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.44.1/matchblox-linux-amd64"
      sha256 "bc5ec700f0112065d74dfa82012e70758b926d92c859bb07c2bc065b4f6ac6ec"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
