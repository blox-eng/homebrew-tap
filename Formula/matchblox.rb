# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.55.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.55.0/matchblox-darwin-arm64"
      sha256 "608f5115e867ec4fd25f73ca3ed5ef8ce407f1a46c0ec1fdee8485c0f7c8c120"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.55.0/matchblox-darwin-amd64"
      sha256 "7d53adc96bfa931c99fe9ceed062d683bc6eb983a06b678103193b9646ad2c73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.55.0/matchblox-linux-arm64"
      sha256 "e2282950f217d90c9465ca1a7e2062b009d6f3cdbfcb5f27a3f8affb5b8c9f68"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.55.0/matchblox-linux-amd64"
      sha256 "23aaa1b0321ecc840dc307179cd80c37b65a46317fc3d467f6747e9a2ac14e6c"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
