# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.56.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.56.0/matchblox-darwin-arm64"
      sha256 "bf2f8e7bbbb27ea90dfe2dcbaf4dfcb0584b736715fc3f6b595d2c87de3950e9"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.56.0/matchblox-darwin-amd64"
      sha256 "08cf5e6069788881f1518f939e37c5d51dc152c9eba658e290885626a574fa4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.56.0/matchblox-linux-arm64"
      sha256 "bcc3fabd03d570bfff4e52569dd423bff6daa03410ce10b2d680e975e4f47c15"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.56.0/matchblox-linux-amd64"
      sha256 "91f1bdfac91edded0df80d5f7a68fca706b009c3b2751b097c9845d433ad6c87"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
