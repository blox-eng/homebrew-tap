# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.54.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.54.0/matchblox-darwin-arm64"
      sha256 "9e54f0d19e8de449dfb3951f80134ecd6de4c1b2bd7be83d71a8024dbdb05e0a"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.54.0/matchblox-darwin-amd64"
      sha256 "d6bae41a4366f08aecc6e00c91ad24fd1baec0f04825f515265e8c9c5e384c8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.54.0/matchblox-linux-arm64"
      sha256 "104bbaa85a8f99c9bd876733fe71d026d91a9ab4892465f178ec723c13a9a347"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.54.0/matchblox-linux-amd64"
      sha256 "edff13db8e011af0fdbc311a31b6ad0623e2bc97cd97f7719c0b2136e411e243"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
