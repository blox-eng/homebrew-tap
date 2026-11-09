# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.39.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.39.0/matchblox-darwin-arm64"
      sha256 "357943c215c9c474a02121d807549149c01fb3f2dc0fdda74066857b3f592b29"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.39.0/matchblox-darwin-amd64"
      sha256 "bf899037fe548760d7abb7c90fd5450e0c34cbaa55f98cc1d865fbb65ee4480d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.39.0/matchblox-linux-arm64"
      sha256 "93820cf1d18e0ce3bb5ee748e26821e8fecef1d14049856ae577792ad53a34ec"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.39.0/matchblox-linux-amd64"
      sha256 "61dfd82f99f1e853d844887477a1536ac59c49892eec1c8d46ba36b533b3e90a"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
