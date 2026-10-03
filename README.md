# homebrew-sogon

[Sogon](https://sogon.dev/) 설치용 Homebrew 탭. 메뉴 바에서 말하면 받아쓰고, LLM으로 다듬어
커서 자리에 넣어 주는 macOS 앱입니다.

## 설치

```bash
brew install --cask ddiiwoong/sogon/sogon
```

또는 탭을 먼저 추가하고:

```bash
brew tap ddiiwoong/sogon
brew install --cask sogon
```

`Brewfile`에서는:

```ruby
tap "ddiiwoong/sogon"
cask "sogon"
```

## 요구 사항

- Apple Silicon (arm64)
- macOS 14 Sonoma 이상

받는 DMG는 서명·공증·staple이 되어 있어 `xattr` 우회가 필요하지 않습니다. 업데이트는 앱이
Sparkle로 직접 처리하므로(`auto_updates true`) `brew upgrade`를 돌리지 않아도 됩니다.

DMG를 직접 받으려면 [릴리스 페이지](https://github.com/ddiiwoong/sogon-site/releases/latest)를
쓰세요.

---

Homebrew tap for [Sogon](https://sogon.dev/), a macOS menu-bar speech-to-text app.

```bash
brew install --cask ddiiwoong/sogon/sogon
```

Requires Apple Silicon and macOS 14 or newer. The app updates itself through Sparkle, so
`brew upgrade` is not needed. Direct DMG downloads are on the
[releases page](https://github.com/ddiiwoong/sogon-site/releases/latest).
