# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.40.3. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.3/matchblox-darwin-arm64"
      sha256 "6771c70346bdd704b48ebbb2e178bdacae6c31ff63898c3ee36cb20f7f9f967f"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.3/matchblox-darwin-amd64"
      sha256 "f309b5923562703b86cf1bfc15083cf8ab206354d98ee415b041502eb01a0662"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.3/matchblox-linux-arm64"
      sha256 "a433902e0f6979adda72bf80bee07264e2260f6217f670a204eef7caf7262070"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.40.3/matchblox-linux-amd64"
      sha256 "41736723b34f62f8a951ccc076071d8cc1d3d799bd79cc991e1e83bc11997cd0"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
