# homebrew-tap

Homebrew tap for [txtnimal](https://github.com/ShiGaChenTW/txtnimal) — a minimal, keyboard-first plain-text todo app for macOS.

## Install

```sh
brew install --cask shigachentw/tap/txtnimal
```

Or tap first, then install:

```sh
brew tap shigachentw/tap
brew install --cask txtnimal
```

## First launch

txtnimal v0.1.0 is an unsigned build (no Developer ID, not notarized by Apple). On first launch macOS Gatekeeper will block it. To open it:

```sh
xattr -dr com.apple.quarantine "/Applications/txtnimal.app"
```

Or Control-click `txtnimal.app` in Finder and choose **Open**.

## Update / uninstall

```sh
brew upgrade --cask txtnimal
brew uninstall --cask txtnimal
```
