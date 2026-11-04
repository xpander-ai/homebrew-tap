cask "xpander" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0-internal.767"
  sha256 arm:   "373cbc5cb2f510e31df61bc7766a5f34e201822d9d08c4b5fc011cf8897690ad",
         intel: "9a3ccc2ba5767d66f572b0dc53abd399ca47144738973fe3aa1006198c9a4c13"

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
