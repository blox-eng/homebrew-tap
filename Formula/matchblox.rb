# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.57.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.57.1/matchblox-darwin-arm64"
      sha256 "0e1b79470852383f2d0901aceef845358f6396e85d932d112a780277b1342d06"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.57.1/matchblox-darwin-amd64"
      sha256 "d559d2adb4fa0fdc68509db8e171a201c81546783d1c5c4487fe8e126f207459"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.57.1/matchblox-linux-arm64"
      sha256 "069d7ed6121a7c421a0e74d373e85032de7a30beae25427c8fc68efc37ec2f86"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.57.1/matchblox-linux-amd64"
      sha256 "95f157f86c06c7343c2aa8d48b844182f45a2cd98d7d4c3db84dabf9f2220b27"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
