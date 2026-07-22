cask "txtnimal" do
  version "0.1.0"
  sha256 "9ef86a7ee9a9a3797d2242c30d4777701672b6b4874175ec8cd287a8ac0d4bd9"

  url "https://github.com/ShiGaChenTW/txtnimal/releases/download/v#{version}/txtnimal-v#{version}-macos-universal.dmg"
  name "txtnimal"
  desc "Minimal, keyboard-first plain-text todo app"
  homepage "https://github.com/ShiGaChenTW/txtnimal"

  depends_on macos: :ventura

  app "txtnimal.app"

  zap trash: "~/Library/Preferences/app.txtnimal.txtnimal.plist"

  caveats <<~EOS
    txtnimal v#{version} is an unsigned build (no Developer ID, not notarized by Apple).
    On first launch macOS Gatekeeper will block it. To open it, run:

      xattr -dr com.apple.quarantine "#{appdir}/txtnimal.app"

    or Control-click txtnimal.app in Finder and choose Open.
  EOS
end
