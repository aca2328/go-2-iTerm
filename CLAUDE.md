# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

A macOS AppleScript utility that opens a new iTerm2 tab (`cd`'d into the current Finder window's directory). Distributed as a compiled `.app` bundle.

## Files

- `go2item.scpt` — editable source script (plain text AppleScript)
- `src/current-finder-to-iTerm2-tab.scpt` — compiled binary (legacy/reference, not for editing)
- `res/applet.icns` — app icon

## Build

Compile the source script into a standalone app:

```sh
osacompile -o go2item.app go2item.scpt
# To embed the custom icon:
cp res/applet.icns go2item.app/Contents/Resources/applet.icns
```

## Run / Test

```sh
osascript go2item.scpt
```

Requires iTerm2 to be installed and a Finder window to be open and focused.

## How It Works

1. Gets the POSIX path of the front Finder window.
2. Checks if iTerm/iTerm2 is already running (handles both process name variants).
3. If running with no windows, creates a new window; if running with windows, creates a new tab.
4. Writes `clear; cd <path>` into the new session.
