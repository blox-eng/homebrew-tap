# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.62.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.62.0/matchblox-darwin-arm64"
      sha256 "3aacc47ea921c39f401f3d9ecbc69c3a76885f5a7e60e8bd017c1e5b43feabab"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.62.0/matchblox-darwin-amd64"
      sha256 "3991ac2f484c51cd73ec3eef82fd7943a750120e4ba50771c4ea55e540963289"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.62.0/matchblox-linux-arm64"
      sha256 "6cf229a11cae668f8dfd41d0b16223cb39bd0bb9dc1fb9cc873cb89b7be442f9"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.62.0/matchblox-linux-amd64"
      sha256 "51c9e47cb8b619326cf69419865be725b57679bcce974764b68cfdcd90e95962"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
