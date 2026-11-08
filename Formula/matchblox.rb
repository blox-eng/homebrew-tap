# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.38.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.38.0/matchblox-darwin-arm64"
      sha256 "bfe4d42596283269fc091bddcdc67c7c5f522cdfb940ee6f4e3e17bf497cbf32"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.38.0/matchblox-darwin-amd64"
      sha256 "f127c545b18c10be850829d7fa2102d4629c405fc3c3af21038cbf54a1221685"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.38.0/matchblox-linux-arm64"
      sha256 "fb6789847c228f62f0854b73decce25f73c346c3115cce163b006f5f551df55e"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.38.0/matchblox-linux-amd64"
      sha256 "0101a7542246db833ad908154b7ede1fde8889342d56ab5569f92faf733fc0c7"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
