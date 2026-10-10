cask "sogon" do
  version "0.33.0"
  sha256 "3bcde53d12d12a242873e7ba2e633e4410c5397d17aebe4ba3a11d060789b68b"

  # GitHub Release 자산. 저장소가 공개이므로 **인증 없이 받아진다** — 예전 내부 호스팅이 요구했던
  # 세션과 토큰이 필요 없다.
  # 동작 조건:
  #  1) 릴리스를 정확히 "v#{version}"(예: v0.1.0) 태그로 생성
  #  2) dmg를 "Sogon.dmg" 이름으로 릴리스 자산에 첨부 (scripts/publish-release.sh가 한다)
  url "https://github.com/ddiiwoong/sogon-site/releases/download/v#{version}/Sogon.dmg"
  name "Sogon"
  desc "Menu-bar STT app: voice to transcription with LLM correction and auto insert"
  homepage "https://sogon.dev/"

  # Sparkle 자체 업데이트를 쓴다 — `brew upgrade` 없이도 앱이 스스로 받고 설치한다.
  # 피드는 https://sogon.dev/appcast.xml 이고 자산은 이 Cask가 가리키는 것과 **같은 DMG**다.
  # 그래서 brew로 받은 사람과 앱이 스스로 받는 사람이 같은 바이트를 받는다.
  auto_updates true
  # Apple Silicon 전용, macOS 14+
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sogon.app"

  zap trash: [
    "~/Library/Application Support/Sogon",
    "~/Library/Caches/com.sogon.app",
    "~/Library/Preferences/com.sogon.app.plist",
    "~/Library/Saved Application State/com.sogon.app.savedState",
  ]
end
