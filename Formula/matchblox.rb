# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.46.2. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.2/matchblox-darwin-arm64"
      sha256 "2e630812651d34aea31396b9ac9fb5e535f0b296fd2fb6c3e1ac8b8f1c96fa73"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.2/matchblox-darwin-amd64"
      sha256 "046b6a67a3448f09a9d487f3c1a1afd2d1d3ec777cf438576f122778b64e6803"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.2/matchblox-linux-arm64"
      sha256 "aa37c6d17036f614b31780ae48f72a11c449ec194a8ff5fdab0692ea9a0f576a"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.2/matchblox-linux-amd64"
      sha256 "3ccf3be3f4a2593428ad67ed410f96737066282ec80e8ef44ec5fa3da1c32b42"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
