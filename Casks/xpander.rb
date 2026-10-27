cask "xpander" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0-internal.465"
  sha256 arm:   "91bfa37f916b2753debe49e4e79cb2a0ad1fdd33817549c8a0d5936801a9cde1",
         intel: "250460ff07de13cd5295bbd7027a35851c480c37a1db91167b0a5553beb3add4"

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
