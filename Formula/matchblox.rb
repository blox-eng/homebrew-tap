# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.23.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.23.1/matchblox-darwin-arm64"
      sha256 "505e867ed155a4c2e23e11eba1b083b51809eb51174011d6afc2e5a6f05934be"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.23.1/matchblox-darwin-amd64"
      sha256 "dac44707bd9e040779ff42b27ea08e7f2f2aad988451c08d77c5aff16a905eb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.23.1/matchblox-linux-arm64"
      sha256 "d91b19e99f123000b803dc1fececc9f9b5922b637d55542ac3f2674a73b0c97c"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.23.1/matchblox-linux-amd64"
      sha256 "d8e991ab034c4d19e7993dbc3c0559a1e222374116d96245e116bd61a829ce70"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
