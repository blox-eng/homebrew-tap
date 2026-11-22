# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.57.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.57.0/matchblox-darwin-arm64"
      sha256 "893219edc02a0a30e6953207d8a920c323ee1feab3461fc07dbee906bd03892c"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.57.0/matchblox-darwin-amd64"
      sha256 "6647b3b1ae9b7d8b6b1ca75af88c4b566d05254d222659cdb0a793179c01d11e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.57.0/matchblox-linux-arm64"
      sha256 "f8fb2b3b9b6faa5c2fe2ca641e13e39b31031faa1eff18d530eb5aa9f81b540a"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.57.0/matchblox-linux-amd64"
      sha256 "b23d8bcf47b81022528ddc94138f47f3324187724187fe2a82eaa0f10e1ee975"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
