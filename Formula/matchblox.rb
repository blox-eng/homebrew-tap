# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.49.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.49.0/matchblox-darwin-arm64"
      sha256 "0a6e617e45454255520a2f4ddda78a32411029a7b76c40f97576eb59015a2e28"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.49.0/matchblox-darwin-amd64"
      sha256 "947f38a9fc70b9d640d3320e59ff9018a59839044584c4683da45ddfd9aac196"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.49.0/matchblox-linux-arm64"
      sha256 "170d204c589e94493f069c83e28e3a2c83a377ff22244639bdcbe6532b564eb6"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.49.0/matchblox-linux-amd64"
      sha256 "e4cdb8fb235dcff7541f10fc379999fee0b7383a5d2daeeb75dd778ab15ba594"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
