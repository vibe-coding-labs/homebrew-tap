# VibeFocus Homebrew Tap

Homebrew tap for [VibeFocus](https://github.com/vibe-coding-labs/vibe-focus) - a keyboard-driven focus timer for macOS.

## Installation

```bash
# Add this tap
brew tap vibe-coding-labs/tap

# Install VibeFocus
brew install --cask vibefocus
```

## Usage

After installation, launch VibeFocus from your Applications folder or Spotlight.

Default hotkey: `Cmd + Shift + .` to toggle the focus timer.

## First Launch

Since VibeFocus is not signed with an Apple Developer certificate, you may need to:

1. Open **System Settings → Privacy & Security**
2. Scroll down to **Security** section
3. Click **"Open Anyway"** next to VibeFocus

Or use the terminal:
```bash
xattr -dr com.apple.quarantine ~/Applications/VibeFocus.app
```

## Grant Accessibility Access

VibeFocus requires Accessibility permissions to register global hotkeys:

1. Open **System Settings → Privacy & Security → Accessibility**
2. Add **VibeFocus** to the allowed apps

## Uninstall

```bash
brew uninstall --cask vibefocus
brew untap vibe-coding-labs/tap
```
