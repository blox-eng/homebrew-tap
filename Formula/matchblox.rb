# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.68.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.68.1/matchblox-darwin-arm64"
      sha256 "0e78f9bee0ab0cfbc971f7a1e1e4fe8cc1dc82dace1c154c2dfe1e4d9176655e"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.68.1/matchblox-darwin-amd64"
      sha256 "0b531e548f5f1c9ac71f37dfa1ba64baf436304a7274ecdbb49c41ca0cc84235"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.68.1/matchblox-linux-arm64"
      sha256 "07b9b5a941d9e1923b02f7706e862f4b902aef82f525e82bc1b7e5ee79027f07"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.68.1/matchblox-linux-amd64"
      sha256 "890eacf3a55c47ad2b65afb4b3402ac8f9b7eed564ed9e8979c567c1b2672e7d"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
