# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.60.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.60.0/matchblox-darwin-arm64"
      sha256 "263a0de346b36c2a844e9b8f0d34d52a0c66fa45dd2ff5f565c38678ef1ceeca"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.60.0/matchblox-darwin-amd64"
      sha256 "ee9baa2c148178b3a43b44359ca44a5fb6cfa2ea85e4b6516b3349b4cc447b7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.60.0/matchblox-linux-arm64"
      sha256 "3b4c199789d9a6db5c0947466de93a009a9caa6f44b9774d99fc84bd6f4d1e08"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.60.0/matchblox-linux-amd64"
      sha256 "b4979a8104dd57c7790b93d203cc17f7126b91c694cc011d0353d8dcb226576f"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
