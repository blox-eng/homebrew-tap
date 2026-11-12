# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.42.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.42.0/matchblox-darwin-arm64"
      sha256 "380203e89f498bc87773b334aed14a682607d0c78b2ba427392b6092847bf799"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.42.0/matchblox-darwin-amd64"
      sha256 "4345aaf256c47ee0a7c7dbfffdae9e6ac543bb6167e0d9b76b63dd12f5b98717"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.42.0/matchblox-linux-arm64"
      sha256 "4d3654e142f85c56d0ddf8eecb73757cdbc8b97d414abd302ee43893018e031d"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.42.0/matchblox-linux-amd64"
      sha256 "30a3b1c59686aeff92bb39c43cd3d09ef6e11b2324ece44721a644bfecd27bab"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
