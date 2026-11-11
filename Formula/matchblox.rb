# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.40.2. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.2/matchblox-darwin-arm64"
      sha256 "cf1456d364224d703ef3d4ffe9b76a45aaf7e5f4f8862095a750219fdd5f1e64"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.2/matchblox-darwin-amd64"
      sha256 "a7625a0b63afc6362bbfe190de89accacc6b13b7eae17eb3d80e6bbfd8e27c1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.2/matchblox-linux-arm64"
      sha256 "8da338772ea282465ce14224077333555539dc0e0bd8b482fff863066dd004a2"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.2/matchblox-linux-amd64"
      sha256 "3620143b80383c6d53e082a663e77bb172720ee2837ad47617fe21e2f8e3d1a9"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
