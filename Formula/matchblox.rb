# Written by .github/scripts/packages.sh in blox-eng/matchblox for v0.27.0. Do not edit:
# the next release writes it again.
class Matchblox < Formula
  desc "One terminal console for every AI coding agent you run"
  homepage "https://matchblox.com"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.27.0/matchblox-darwin-arm64"
      sha256 "6bc0404435a86506ebe5d8077e865a2cf5b0fb526b77fdd2b0b0b6eb83e7647f"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.27.0/matchblox-darwin-amd64"
      sha256 "57e13df07ff6acda6919d5ddb9033158bf9a505b878c44755e79ab5c041a6427"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.27.0/matchblox-linux-arm64"
      sha256 "0a046a89e53eb8be577e0c9f27fa58726ac7f523fefc3a60b4e6b49a576e565c"
    end
    on_intel do
      url "https://github.com/blox-eng/matchblox/releases/download/v0.27.0/matchblox-linux-amd64"
      sha256 "265b2f90f5eff52e393911512e021f700f6d16ec0c93b9a5d168868c193e728d"
    end
  end

  def install
    bin.install Dir["matchblox-*"].first => "matchblox"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/matchblox version").strip
  end
end
