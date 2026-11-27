# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.69.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.69.0/matchblox-darwin-arm64"
      sha256 "4638524a537302cd95f7d5b16793efb0cb2c6b5e910339493a23333b808e2608"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.69.0/matchblox-darwin-amd64"
      sha256 "1463b069eca1a19e67f3c406811a06c9b218067d5e9a5f782b6fccf4df44f867"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.69.0/matchblox-linux-arm64"
      sha256 "d960303b9486d22d605ac1bc5ae1db0ae157da50a63d06b05d9dc598d4e2449b"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.69.0/matchblox-linux-amd64"
      sha256 "ff86bbdf835941e4c465cd08b8c379c8b228754a753566ea2ca2be94c1181d6b"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
