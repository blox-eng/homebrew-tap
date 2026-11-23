# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.58.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.58.1/matchblox-darwin-arm64"
      sha256 "26880da430a3f28ffe3abee2a9cc7af4d7bea2836a84c6957e6c255290fa0e2e"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.58.1/matchblox-darwin-amd64"
      sha256 "a73acb5b76ee6981c9db4110173a89004eea791c69bfa743f579538e362eb805"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.58.1/matchblox-linux-arm64"
      sha256 "ffaec24db43a3666775e68774c46054e487a7a3ac370badbe1f2000d53e07297"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.58.1/matchblox-linux-amd64"
      sha256 "f76b25df0197d041782f034c8a537f75b3707a4389f5968ca32c6ad7cbdbdd72"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
