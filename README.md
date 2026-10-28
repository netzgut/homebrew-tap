# Netzgut Homebrew Tap

Homebrew casks for apps by Netzgut.

## Install

```sh
brew install --cask netzgut/tap/focus-tool-37
```

Or tap first, then install by name:

```sh
brew tap netzgut/tap
brew install --cask focus-tool-37
```

## Casks

| Cask            | App                                                         |
| --------------- | ----------------------------------------------------------- |
| `focus-tool-37` | [Focus Tool 37](https://netzgut.github.io/focus-tool-37/): move keyboard focus to the nearest window in a direction |

## Updating a cask

After publishing a new GitHub release, set `version` and `sha256` in the cask.
The checksum is in the `.sha256` file next to the release zip.

```sh
brew style Casks/focus-tool-37.rb
brew audit --cask netzgut/tap/focus-tool-37
```
