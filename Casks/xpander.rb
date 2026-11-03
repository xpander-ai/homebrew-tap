cask "xpander" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0-internal.739"
  sha256 arm:   "2708f2f8bee071c5568e7599000202b2fad1e01abe38d220ba2e3410e41c83bf",
         intel: "b5c7236811f37b70dda564591b42a7d8ba07c239d77aa1feeff724ef3b7afbef"

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
