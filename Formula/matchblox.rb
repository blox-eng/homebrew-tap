# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.40.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.0/matchblox-darwin-arm64"
      sha256 "d5a71659dfc201507201e1c29fcb6be23c732585a87d74129435592389054188"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.0/matchblox-darwin-amd64"
      sha256 "952e123ca1cb14d435cfe90e8d4888f8c1733e4e28578e023cbb35c339b63099"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.0/matchblox-linux-arm64"
      sha256 "aaa1a0f3a29b02b78ea3d2f5ace8ad221f469da5a8b2cd648e1fa636b615f4fb"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.0/matchblox-linux-amd64"
      sha256 "867af5479b4fb14cc69ef21f2d104245c7778268f1509571d0cbfcdd96cee137"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
