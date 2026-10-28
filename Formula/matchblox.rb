# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.26.2. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.26.2/matchblox-darwin-arm64"
      sha256 "b3c1b527a9daba9b3575b3c6f86dfe46b9638681e73415b9af2793523e11a706"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.26.2/matchblox-darwin-amd64"
      sha256 "b482ccf93b1dbd7fd4c054ede3ed93de35d545dc8d1f2fb3a9e9ab88ea5e68a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.26.2/matchblox-linux-arm64"
      sha256 "cbd048bb1d4207350f4e3201a9006e9f8c045afaab4d388fc1cef4c9b5fc358c"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.26.2/matchblox-linux-amd64"
      sha256 "2960736b973c284fcddc151c21f4f0e42295ef0b6facb082187cc05aecb6b117"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
