# maitrungduc1410/tap

Homebrew tap for my apps.

## Install

```bash
brew install --cask maitrungduc1410/tap/native-screen
```

Installing by the full name trusts that cask. To use the short name, tap and trust it first (Homebrew 6 and later):

```bash
brew tap maitrungduc1410/tap
brew trust --cask maitrungduc1410/tap/native-screen
brew install --cask native-screen
```

## Apps

| App | Type | Install |
|---|---|---|
| [Native Screen](https://nativescreen.app/) | Cask | `brew install --cask maitrungduc1410/tap/native-screen` |

## Updates

`.github/workflows/bump.yml` checks each app's latest GitHub release every day and commits the new version and sha256. Run it by hand from the Actions tab right after publishing a release.

Native Screen updates itself, so `brew upgrade` skips it unless you pass `--greedy`.

## Adding an app

1. Add `Casks/<token>.rb` (an app) or `Formula/<name>.rb` (a CLI tool).
2. Check it: `brew audit --cask --strict maitrungduc1410/tap/<token>` and `brew style maitrungduc1410/tap`.
3. Add a line for it to `apps` in the bump workflow.
