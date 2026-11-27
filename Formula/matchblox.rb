# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.66.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.66.0/matchblox-darwin-arm64"
      sha256 "bfad34f2e478ad17ddefd4a3fcc436d32042b72c658f1a2adc09d9c71b254fdf"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.66.0/matchblox-darwin-amd64"
      sha256 "4fc8b73e499338269859af54484f74b9faa1105b723b68b69dc11316791399ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.66.0/matchblox-linux-arm64"
      sha256 "1e5a565be45db6a9a1083e7ef8b2f265185ad59dcd01d6f287a207dedac62e23"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.66.0/matchblox-linux-amd64"
      sha256 "22e582585719d566dfba775d7b2aa5a93fbbeb83625868b0e8770f07cf171231"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
