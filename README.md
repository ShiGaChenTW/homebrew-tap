# homebrew-tap

Homebrew tap for my own macOS tools.

| | Install |
|---|---|
| [ghostty-config-studio](https://github.com/ShiGaChenTW/ghostty_config_studio) — terminal workbench for Ghostty themes and config | `brew install shigachentw/tap/ghostty-config-studio` |
| [txtnimal](https://github.com/ShiGaChenTW/txtnimal) — minimal, keyboard-first plain-text todo app | `brew install --cask shigachentw/tap/txtnimal` |
| [anchorline](https://github.com/ShiGaChenTW/anchorline) — local-first workbench for development projects, with an on-disk audit trail | `brew install --cask shigachentw/tap/anchorline` |

Or tap once, then install by name:

```sh
brew tap shigachentw/tap
brew install ghostty-config-studio
brew install --cask txtnimal
brew install --cask anchorline
```

## Unsigned builds — first launch

`txtnimal` and `anchorline` are unsigned (no Developer ID, not notarized by Apple), so
Gatekeeper blocks them on first launch. Clear the quarantine attribute Homebrew sets:

```sh
xattr -dr com.apple.quarantine "/Applications/txtnimal.app"
xattr -dr com.apple.quarantine "/Applications/Anchorline.app"
```

Or Control-click the app in Finder and choose **Open**.

## Update / uninstall

```sh
brew upgrade ghostty-config-studio
brew uninstall ghostty-config-studio

brew upgrade --cask txtnimal
brew uninstall --cask txtnimal

brew upgrade --cask anchorline
brew uninstall --cask anchorline
```
