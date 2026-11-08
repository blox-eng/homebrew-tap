# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.37.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.37.0/matchblox-darwin-arm64"
      sha256 "56f2d52caaf8f7ff4992bf54ea960128fcb0665f9929f71e3eb475d96bed464d"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.37.0/matchblox-darwin-amd64"
      sha256 "623e49da2a8fe9dcd5072b28815d838edc51b33393d4fc3fd858fc701abe849d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.37.0/matchblox-linux-arm64"
      sha256 "104331fed92d1b6ff449cef414a669d37cfd0d2aaf591fc5c067ad2423b789bc"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.37.0/matchblox-linux-amd64"
      sha256 "531f3f9d2291cd2a80f2fd7c2508b835b1bd7512d1b84dff42af0252601ef936"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
