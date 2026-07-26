# homebrew-tap

Homebrew tap for my own macOS tools.

| | Install |
|---|---|
| [ghostty-config-studio](https://github.com/ShiGaChenTW/ghostty_config_studio) — terminal workbench for Ghostty themes and config | `brew install shigachentw/tap/ghostty-config-studio` |
| [txtnimal](https://github.com/ShiGaChenTW/txtnimal) — minimal, keyboard-first plain-text todo app | `brew install --cask shigachentw/tap/txtnimal` |

Or tap once, then install by name:

```sh
brew tap shigachentw/tap
brew install ghostty-config-studio
brew install --cask txtnimal
```

## txtnimal — first launch

txtnimal v0.1.0 is an unsigned build (no Developer ID, not notarized by Apple). On first launch macOS Gatekeeper will block it. To open it:

```sh
xattr -dr com.apple.quarantine "/Applications/txtnimal.app"
```

Or Control-click `txtnimal.app` in Finder and choose **Open**.

## Update / uninstall

```sh
brew upgrade ghostty-config-studio
brew uninstall ghostty-config-studio

brew upgrade --cask txtnimal
brew uninstall --cask txtnimal
```
