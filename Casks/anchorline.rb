cask "anchorline" do
  version "1.1.0"
  sha256 "95d3e5afca8d444f38ed679b931a509e938c3a80f32a7bdb209e93c37b687070"

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
