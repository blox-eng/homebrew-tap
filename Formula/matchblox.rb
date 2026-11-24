# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.59.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.59.0/matchblox-darwin-arm64"
      sha256 "74f5cf7cb7d544a1b6c7901da5cb8710458266887df8b5072d9eeaf7e6f3199d"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.59.0/matchblox-darwin-amd64"
      sha256 "53500b9ebdc7fe8e643c32256d438ee4f9383e25c80447ad3472ec5e43096b34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.59.0/matchblox-linux-arm64"
      sha256 "242cd271701f28ddc7505b71ede20d0f5d65c418819eed572212e924fb93e901"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.59.0/matchblox-linux-amd64"
      sha256 "9a539b2ba78eaec1202071a8164bd88288880aa6b29e24899a07db0f57f6e123"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
