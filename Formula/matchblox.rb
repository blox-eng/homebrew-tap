# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.61.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.61.0/matchblox-darwin-arm64"
      sha256 "36dc8c21d62f5b4737ad6361effe3c23753e6fe10eb6e4e6c4738eae0d604154"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.61.0/matchblox-darwin-amd64"
      sha256 "ed9c6cf09b0635571db63553d02a241a536636ed13e162feeb0647cb586c0cd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.61.0/matchblox-linux-arm64"
      sha256 "d8f36a6e2f4d22c00f37873e6a76527e2a5e92edcb1d04914a381246459aa601"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.61.0/matchblox-linux-amd64"
      sha256 "9750ae6c5f53b01a6e200d461c698806adc4dea4bf5aa38ae5f1d1a7711ae56b"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
