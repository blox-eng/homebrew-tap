# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.65.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.65.0/matchblox-darwin-arm64"
      sha256 "ff501e883a8fbd32964795b35041e9c6ad28229e11ff157c5f5308deb1225549"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.65.0/matchblox-darwin-amd64"
      sha256 "377c92f36457b3f3d844b6020fce68039aae4c7d40323c81026e86cdf2fe4e7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.65.0/matchblox-linux-arm64"
      sha256 "593d25dc3b7e6c2b4ee7b4b8ea344acebd2e0378a1c9214f7ab1e95edbb12780"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.65.0/matchblox-linux-amd64"
      sha256 "e39be6474199ba2e6e861af2d54c250ff35fc632b41ef1537fad2ac47243266b"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
