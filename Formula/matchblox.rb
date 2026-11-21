# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.55.1. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.55.1/matchblox-darwin-arm64"
      sha256 "5efd5d6bcdf1615786781d4709fdf7cf5f2aadb1ff5e00ef32094a38a1ce590b"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.55.1/matchblox-darwin-amd64"
      sha256 "2c20423160249520009598b6d5458cb0b05473f828b39c1ffa4c3ff4ae20de26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.55.1/matchblox-linux-arm64"
      sha256 "2b3182d6f9f4e3e3c37d09323ead1ad104a00b8fed42e2802317cba1cab0f23a"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.55.1/matchblox-linux-amd64"
      sha256 "6983dcd5de0b380be4909928e037e0280b66aa27863b6a2cd075d56fc922b363"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
