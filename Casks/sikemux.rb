cask "sikemux" do
  version "0.6.1"
  sha256 "3c84a38e6a0d05d4fccbde2bdacd2649d326f71841efae0f14ff918c63f8bf81"

  url "https://github.com/nodelike/sikemux/releases/download/v#{version}/Sikemux_#{version}_aarch64.dmg"
  name "Sikemux"
  desc "Native workspace for Claude Code, Codex and other coding agents"
  homepage "https://sikemux.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Sikemux.app"

  zap launchctl: "com.nodelike.sikemux.core",
      trash:     [
        "~/.config/sikemux",
        "~/Library/Application Support/com.nodelike.sikemux",
        "~/Library/Caches/com.nodelike.sikemux",
        "~/Library/Caches/com.nodelike.sikemux.notch",
        "~/Library/HTTPStorages/com.nodelike.sikemux",
        "~/Library/HTTPStorages/com.nodelike.sikemux.binarycookies",
        "~/Library/LaunchAgents/com.nodelike.sikemux.core.plist",
        "~/Library/Logs/com.nodelike.sikemux",
        "~/Library/Preferences/com.nodelike.sikemux.notch.plist",
        "~/Library/Preferences/com.nodelike.sikemux.plist",
        "~/Library/WebKit/com.nodelike.sikemux",
      ]
end
