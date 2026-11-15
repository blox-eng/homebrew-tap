# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.45.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.45.1/matchblox-darwin-arm64"
      sha256 "26ac181ca2b9be1e4a5bde52a31c9087a6457fc188b4d235f435b3b6a06664c3"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.45.1/matchblox-darwin-amd64"
      sha256 "3f547101c999941533ddf82cac4cc3b0ad777ef27908bae0f67b3bfc8db1940d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.45.1/matchblox-linux-arm64"
      sha256 "f48b4504ac1fc544bcc09db6e37ce77c0f0d468226165dd192ded1ec910bf35c"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.45.1/matchblox-linux-amd64"
      sha256 "b0e4eb3071cd3d5ada98360cd5336d83e7a8b96fecbb9822ec91eaf49a586652"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
