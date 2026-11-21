# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.53.2. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.53.2/matchblox-darwin-arm64"
      sha256 "b55b91f6459581147f5cef2b53eaaff453e7bcdb51967035d6599f725246c931"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.53.2/matchblox-darwin-amd64"
      sha256 "d9b5e199dfbc9120e627be9d8393884969affd4fd75e8e62688ffa8da2d0b437"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.53.2/matchblox-linux-arm64"
      sha256 "86fbd5358cce9e058fda8e98e01f9e7774af38d5e40a01de085173c8c0895269"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.53.2/matchblox-linux-amd64"
      sha256 "96b69e887510bd2964ef78c40a5d41e0908051416eaeabddea18077e9a61e10a"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
