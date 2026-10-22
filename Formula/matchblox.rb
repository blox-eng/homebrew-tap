# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.17.3. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.3/matchblox-darwin-arm64"
      sha256 "e969a74bd09e315316150a1b5b18778c916f064d80716e2ab180ae48b4340f88"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.3/matchblox-darwin-amd64"
      sha256 "d2c88903f03cf9cc955cde0941ca25f4df0c0a82788a1232d426b24c4747ac07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.3/matchblox-linux-arm64"
      sha256 "1134efc2eff4a6774bc229e91bdee47679c1ecf8fd0e82c89f94d835ee62b7e7"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.3/matchblox-linux-amd64"
      sha256 "dc0cb4e7837719d671a8edeb1f0269905da26aadeb181f5b6cfa9f09f34c2c8d"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
