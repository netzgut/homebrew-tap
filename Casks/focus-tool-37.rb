cask "focus-tool-37" do
  version "0.1.1"
  sha256 "c0efdc65fdb508446ef25aa0df412514471a04fbd175218b4a457c3e354e4879"

  url "https://github.com/netzgut/focus-tool-37/releases/download/v#{version}/FocusTool37-#{version}.zip"
  name "Focus Tool 37"
  desc "Move keyboard focus to the nearest window in a direction"
  homepage "https://netzgut.github.io/focus-tool-37/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "FocusTool37.app"

  uninstall quit: "net.netzgut.focustool37"

  zap trash: [
    "~/Library/Preferences/net.netzgut.focustool37.plist",
    "~/Library/Saved Application State/net.netzgut.focustool37.savedState",
  ]

  caveats <<~EOS
    #{token} needs the Accessibility permission to move focus between windows.
    On first launch it opens the right pane in System Settings.
  EOS
end
