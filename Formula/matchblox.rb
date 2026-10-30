# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.29.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.29.0/matchblox-darwin-arm64"
      sha256 "e0cc67cde6223e336e116198d529b42fe3dd3c8a1f922c77a9eaec3e0746b2fa"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.29.0/matchblox-darwin-amd64"
      sha256 "4fdd956a7ce059017b549e725fad14580db9f78a2921159ae116e490a501c6da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.29.0/matchblox-linux-arm64"
      sha256 "f0eb6b1f3e2342c3b31e87a376cf79f4fd842fa6c6c99ba04f55b4878f09c193"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.29.0/matchblox-linux-amd64"
      sha256 "92f8080bd22e48411330623503a5570dc3bccb78e3b85492beadd0d5d19c3452"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
