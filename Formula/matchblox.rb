# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.17.2. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.2/matchblox-darwin-arm64"
      sha256 "15eb1e385fd74a3ea8e4897ea290be20cd9202b47271ba86a440e99ea3101151"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.2/matchblox-darwin-amd64"
      sha256 "668d900aac796cd60d43ade041f0577a88a5b346fcf2552583ce08aff6b70056"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.2/matchblox-linux-arm64"
      sha256 "c65701eac3d85de21962eb0089bc2daaeab23ad841bb1359a44d2853bef2eff0"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.17.2/matchblox-linux-amd64"
      sha256 "3c181e38ed917129d9908336ca9d8e31c46bf2e6517ce70cd9c1e30cc02f8da5"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
