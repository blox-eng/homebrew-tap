# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.46.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.0/matchblox-darwin-arm64"
      sha256 "e327426a216813fbc0775d16986bd036673402fb82d23376e4659bb7a798f9bf"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.0/matchblox-darwin-amd64"
      sha256 "8c8fa1de5778c4889b636b0a671c7408c0607adc50efe0ea46001607d7b7891e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.0/matchblox-linux-arm64"
      sha256 "6402a45f62767a212b4ba8d047a909ee22dc61e0f410e0ce4e9181a429aea01e"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.0/matchblox-linux-amd64"
      sha256 "65491a7c1502a09833df73c45388424945bafbeb0ac381e1e094e2691417268e"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
