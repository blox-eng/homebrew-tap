# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.53.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.53.0/matchblox-darwin-arm64"
      sha256 "303c088d7498f77e7ca7d2267739a8f62e1ca854a5f29c4173c179db302cc024"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.53.0/matchblox-darwin-amd64"
      sha256 "a5224a5c945b11ad5bfcc29a95903af685e3f4a5f7d40a176a11021df3a6d6f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.53.0/matchblox-linux-arm64"
      sha256 "9326aecc560a134bf71b074670838dcec5bd9fc5133e49d33e1fd6bbf35c849d"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.53.0/matchblox-linux-amd64"
      sha256 "627d6a4b4226db69a7b05bfcd1e218f2da87753a1ea7d93cae7f3c159c9a721c"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
