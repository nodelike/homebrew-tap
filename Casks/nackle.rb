cask "nackle" do
  arch arm: "arm64", intel: "x64"

  version "0.0.1"
  sha256 arm:   "9935c267a0f90be25a00567d2997a122757941325405eb23d37d0cd7afb8ebdd",
         intel: "9968929d67cec94d489a1e0f899d563776ac93028354634007e3d4464776da2e"

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
