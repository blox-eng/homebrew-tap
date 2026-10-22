# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.17.4. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.4/matchblox-darwin-arm64"
      sha256 "9863e160a1a92f6068ae9e595c1a01ca21eeafccfc98df64106b5f7ab18c0e97"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.4/matchblox-darwin-amd64"
      sha256 "214c46606f806005ee13da303037c90705b5fafd4d1f830240e75597ea09762d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.4/matchblox-linux-arm64"
      sha256 "6c2b7f045ab0754fcd1e56e46fddb97efc02fdb54d964712652743996ad3af02"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.4/matchblox-linux-amd64"
      sha256 "c6a932e1e7592867132fa8ada986e4be4122a9dc23bdd4d67b4aca8b7b8acb5b"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
