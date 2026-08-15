# Homebrew formula for sysapp-tui.
#
# Lives here as the source of truth; the copy that users install from belongs
# in the tap repository (ShiGaChenTW/homebrew-tap) as Formula/sysapp-tui.rb.
#
# Release procedure:
#   1. bump `version` in Cargo.toml, commit
#   2. git tag vX.Y.Z && git push --tags   → the release workflow builds both
#      macOS targets and publishes the tarballs plus their .sha256 files
#   3. copy the two checksums from the workflow's "Show checksums" step into
#      the `sha256` lines below
#   4. copy this file into the tap repo and push
#
class SysappTui < Formula
  desc "macOS system package scanner and TUI dashboard"
  homepage "https://github.com/ShiGaChenTW/sysapp-tui"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ShiGaChenTW/sysapp-tui/releases/download/v#{version}/sysapp-tui-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5422b0c0c3010153ad4aa2e9d97a659663c836d5c8a3df9f6a606fa75aa66705"
    else
      url "https://github.com/ShiGaChenTW/sysapp-tui/releases/download/v#{version}/sysapp-tui-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "98e3193e671aceec28b584d18aaf394823c4ab45ef1fa84de6d43fc48afa4794"
    end
  end

  def install
    bin.install "sysapp-tui"
  end

  test do
    # The TUI needs a tty, so the smoke test exercises the non-interactive
    # paths only — enough to prove the binary runs and is the expected build.
    assert_match version.to_s, shell_output("#{bin}/sysapp-tui --version")
    assert_match "sysapp-tui", shell_output("#{bin}/sysapp-tui --help")
  end
end
