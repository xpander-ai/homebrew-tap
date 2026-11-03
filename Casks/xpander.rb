cask "xpander" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0-internal.715"
  sha256 arm:   "57516f287b0e0e1772a5dd735ab7b2f42f6991cf488ee07343da119b979ea457",
         intel: "41bd55d5add404ca76e86b5361a89ad6fd450a9811013e8712f3a5bfee719e51"

  url "https://chat.xpander.ai/desktop/feed/xpander-#{version}-#{arch}.dmg"
  name "Omni"
  desc "Your xpander agents, working on this computer"
  homepage "https://xpander.ai/"

  livecheck do
    url "https://chat.xpander.ai/desktop/feed/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "xpander.ai.app"

  zap trash: [
    "~/Library/Application Support/xpander.ai",
    "~/Library/Caches/ai.xpander.desktop",
    "~/Library/Caches/ai.xpander.desktop.ShipIt",
    "~/Library/HTTPStorages/ai.xpander.desktop",
    "~/Library/Logs/xpander.ai",
    "~/Library/Preferences/ai.xpander.desktop.plist",
    "~/Library/Saved Application State/ai.xpander.desktop.savedState",
  ]
end
