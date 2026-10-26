# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.23.2. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.23.2/matchblox-darwin-arm64"
      sha256 "57bda4640c645dce04d7b2be8150dcca1a0ffd49618fa2aaad2e9e5383817ed7"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.23.2/matchblox-darwin-amd64"
      sha256 "e84dcab5fc39c7d4f512c9b0d297b0e97fd5c6b8d134870ede44e23187441ed8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.23.2/matchblox-linux-arm64"
      sha256 "deaf920244113c7cc70b7ae1c464136c3c1dba1ee655002dc10ff54a369c1b5f"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.23.2/matchblox-linux-amd64"
      sha256 "d4230f17071e196945895aee8acb8a753e5c7739784e7009a77fdb4922ca90b2"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
