# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.70.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.70.0/matchblox-darwin-arm64"
      sha256 "72b7d3ea744a4fb1f1828a85acc92965efdd4c7b1800e8c8c0c2d70d4eef5200"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.70.0/matchblox-darwin-amd64"
      sha256 "fa4d521a9bb699efffe5d05c76aba67df089ee0c1efa3fdd5d5ea4ba4ecd7dda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.70.0/matchblox-linux-arm64"
      sha256 "d511ec683e7beb7c34fc83a864fd540d58fc00b3803fce4bc1c3837f8b81bb58"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.70.0/matchblox-linux-amd64"
      sha256 "438248c0c9f585bb8d087a74e0017f7a1648d4de897795ef14189072687084c7"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
