# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.32.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.32.1/matchblox-darwin-arm64"
      sha256 "d904702b0fbd543330631232fc3e52620fa56b35786f34ad07a61f7d346564f6"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.32.1/matchblox-darwin-amd64"
      sha256 "31eed5d7d878595c8d9270c0adc66021599ae93d62577c14708744ea5dac483a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.32.1/matchblox-linux-arm64"
      sha256 "aaa0141f068703b2c6fe5af6f5133ab46ff9ff0e92f2048352e9457b6e4036ef"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.32.1/matchblox-linux-amd64"
      sha256 "7b42fe1cefdc9aaa7db401597fb4222ce812b479d181c381f6ff91490f3d2aa3"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
