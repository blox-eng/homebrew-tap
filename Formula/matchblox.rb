# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.35.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.35.0/matchblox-darwin-arm64"
      sha256 "293532379205ed25cf747e18742d6808337eb158dc19e071f13ce717765032f6"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.35.0/matchblox-darwin-amd64"
      sha256 "a1504f4cff758f25b5ac9c571b3955ea9b632e9bd173b475a634b4011ee14210"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.35.0/matchblox-linux-arm64"
      sha256 "b9cc63539a6f726c40dde82d14f571d204fcbf049147f60f8b297af832990a70"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.35.0/matchblox-linux-amd64"
      sha256 "caeff6ba77ee7409e3ed41b9fc48fff0f4caa9f40cba7e12572fb6c6527e02d5"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
