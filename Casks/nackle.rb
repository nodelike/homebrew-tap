cask "nackle" do
  arch arm: "arm64", intel: "x64"

  version "0.0.4"
  sha256 arm:   "0a89a4464b2e3059559e9854199260967012c5d0c7df4b713177e9dcefe0a18f",
         intel: "0b466bd29b20fb8ccd6f73499843959396d103751bfaa86251945eba3eb16279"

  url "https://github.com/nodelike/nackle/releases/download/v#{version}/Nackle-#{version}-#{arch}.dmg"
  name "Nackle"
  desc "Fast, minimal, shortcut-driven todo app"
  homepage "https://github.com/nodelike/nackle"

  auto_updates true

  app "Nackle.app"

  zap trash: [
    "~/Library/Application Support/nackle",
    "~/Library/Preferences/com.nodelike.nackle.plist",
    "~/Library/Caches/com.nodelike.nackle",
  ]
end
