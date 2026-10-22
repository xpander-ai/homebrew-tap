cask "xpander" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0-internal.380"
  sha256 arm:   "1519bdf7ac8e708b44dd9eee424d231ac94efe1ffad8fd922e96c4209dbb46d3",
         intel: "4a42517a55a425be22513239fb36b361f9843498421e16dce5e8cdd50a5af721"

  url "https://chat.xpander.ai/desktop/feed/xpander-#{version}-#{arch}.dmg"
  name "xpander.ai"
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
