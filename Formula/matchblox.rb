# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.47.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.47.1/matchblox-darwin-arm64"
      sha256 "28d5960acb7f3702504e449e129031fba140e26dbc148cefc3f4b7817ca4e788"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.47.1/matchblox-darwin-amd64"
      sha256 "919ab91782dcab41563935ff8aac90e23542409a1ad2b5512f7c0fb1b3abea14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.47.1/matchblox-linux-arm64"
      sha256 "ebd29c2097d995c15972b544c049a3b764790ee626d28cbaf53828aced7d9373"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.47.1/matchblox-linux-amd64"
      sha256 "de902dc1a0bda60515ed9f20df3ac90d2bf381030f697b1447691e8900a5b152"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
