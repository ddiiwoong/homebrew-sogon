cask "sogon" do
  version "0.31.5"
  sha256 "6f6784a5cc6a5543ad26af2db7ec7f9099245790ea2a0053d36858ccfad426ac"

  # GitHub Release 자산. 저장소가 공개이므로 **인증 없이 받아진다** — 예전 내부 호스팅이 요구했던
  # 세션과 토큰이 필요 없다.
  # 동작 조건:
  #  1) 릴리스를 정확히 "v#{version}"(예: v0.1.0) 태그로 생성
  #  2) dmg를 "Sogon.dmg" 이름으로 릴리스 자산에 첨부 (scripts/publish-release.sh가 한다)
  url "https://github.com/ddiiwoong/sogon-site/releases/download/v#{version}/Sogon.dmg"
  name "Sogon"
  desc "Menu-bar STT app: voice to transcription with LLM correction and auto insert"
  homepage "https://sogon.dev/"

  # Sparkle 자체 업데이트 사용 (brew upgrade 없이도 앱이 스스로 업데이트)
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
