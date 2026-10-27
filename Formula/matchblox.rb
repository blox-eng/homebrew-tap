# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.25.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.25.0/matchblox-darwin-arm64"
      sha256 "1077897293a6f0e72333e1d209bdec4b7294b529a005ba2c53f3459e1e64f75f"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.25.0/matchblox-darwin-amd64"
      sha256 "a8bb4bb1f227b7fc4fb854ebb03ff19e2c8893651a821049c5baf507f40aeee1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.25.0/matchblox-linux-arm64"
      sha256 "380b8a851937eea182176bf88243fc456274799ff6977e14a06a88f7ea481257"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.25.0/matchblox-linux-amd64"
      sha256 "aa1fe9602df5e6ff4fd93b54a42b74223ffc8c4f7675d945fc7632857e20813e"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
