# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.23.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.23.0/matchblox-darwin-arm64"
      sha256 "378cbfe24f3fc63b34dccb6e2309330817a4e3e0ded2792db95e837c036c4070"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.23.0/matchblox-darwin-amd64"
      sha256 "d5d82b71d3bfa673c92bddfa2fb300c7137c520448d7f59474915442a6578f7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.23.0/matchblox-linux-arm64"
      sha256 "b96a12590ed22a111e2096d9018bec4e16ecfa7be2ebb22067af9388c45afba0"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.23.0/matchblox-linux-amd64"
      sha256 "1d17877f98afe54307a3ac7b95d283eaa5a1247ee28ea0995582f5ece75b501b"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
