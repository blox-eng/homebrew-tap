# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.32.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.32.0/matchblox-darwin-arm64"
      sha256 "48b8a5e5f78844b2fd2623ac27cc780c07f2e1556df2a2fb40805b3979134109"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.32.0/matchblox-darwin-amd64"
      sha256 "03f52adc4a3371f14d96555c8d77240e2a9908e1b286c0faf03584a6c25105de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.32.0/matchblox-linux-arm64"
      sha256 "5509c6671fc878affc9e05f1031222136185519034429cabe73754127afea3c7"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.32.0/matchblox-linux-amd64"
      sha256 "fa10f3d9a0874f8c13cfb7f4775bafde63b6157af5547a7595096018b0539ef0"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
