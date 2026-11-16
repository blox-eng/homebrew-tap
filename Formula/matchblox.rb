# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.46.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.1/matchblox-darwin-arm64"
      sha256 "8d43b3c643b0cf1786d7e0011c2cf177cd019fe1295da9c06c132869ef31a742"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.1/matchblox-darwin-amd64"
      sha256 "3a3b6531343cdb295c334e9bb70bb4c75f098d557f45348890d67cf3a8ea2b00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.1/matchblox-linux-arm64"
      sha256 "e5ac3f312499a661d4b89ca678034921da50e859f2632082d367f760770b57bc"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.46.1/matchblox-linux-amd64"
      sha256 "4f30355ee51693a7ae265710b64c24ba5359ea2e40a53a4fe2f53a03d68678cc"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
