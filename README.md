go-2-iTerm2
===========

Opens a new [iTerm2](http://www.iterm2.com/) tab `cd`'d into the current Finder window's directory.

### Requirement

[iTerm2](http://www.iterm2.com/)

### Download

https://github.com/aca2328/go-2-iTerm/releases

### How to use

Add the app to your Finder toolbar, or call it from Spotlight or [Alfred](https://www.alfredapp.com/) by typing `go`.

### Build from source

```sh
osacompile -o go2item.app go2item.scpt
cp res/applet.icns go2item.app/Contents/Resources/applet.icns
```

### Thanks

Heavily inspired by [alfred-terminalfinder](https://github.com/LeEnno/alfred-terminalfinder).
