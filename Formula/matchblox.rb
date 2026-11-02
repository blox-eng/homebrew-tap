# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.30.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.30.1/matchblox-darwin-arm64"
      sha256 "3da26187f5a043cb3f67c550b0c9b5a19359a49b7b79fe62c9e91540165787ca"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.30.1/matchblox-darwin-amd64"
      sha256 "4123e62e42dacf756a15502c038f48b50af69a675db492fa1c61823e3fae7eaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.30.1/matchblox-linux-arm64"
      sha256 "85125ca0588f0076ce51f2d7c516dba5ffd22ead4af8dfb50fc23df3c3cfa204"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.30.1/matchblox-linux-amd64"
      sha256 "fcd89f59c37260f003e6ae3f4412357da7e505070414f02ff623cd2d81e860ac"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
