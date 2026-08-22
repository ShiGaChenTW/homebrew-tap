cask "anchorline" do
  version "1.3.0"
  sha256 "250764e790fb64868dd1729c349c783c88b9721ab4950dadc52a4ab30bf25fd9"

  url "https://github.com/ShiGaChenTW/anchorline/releases/download/v#{version}/Anchorline_#{version}_universal.dmg"
  name "Anchorline"
  desc "Local-first workbench for development projects, with an on-disk audit trail"
  homepage "https://github.com/ShiGaChenTW/anchorline"

  depends_on macos: :ventura

  app "Anchorline.app"

  zap trash: [
    "~/Library/Application Support/dev.anchorline.app",
    "~/Library/Caches/dev.anchorline.app",
    "~/Library/Preferences/dev.anchorline.app.plist",
    "~/Library/Saved Application State/dev.anchorline.app.savedState",
    "~/Library/WebKit/dev.anchorline.app",
  ]

  caveats <<~EOS
    Anchorline v#{version} is an unsigned build (no Developer ID, not notarized by Apple).
    On first launch macOS Gatekeeper will block it. To open it, run:

      xattr -dr com.apple.quarantine "#{appdir}/Anchorline.app"

    or Control-click Anchorline.app in Finder and choose Open.
  EOS
end
