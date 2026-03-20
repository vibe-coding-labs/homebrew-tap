cask "vibefocus" do
  version "0.0.5"
  sha256 "13a1bd5ba987dab78dfad3ad34b0405d5a7160265981e0aa7706fba3f2572f7e"

  url "https://github.com/vibe-coding-labs/vibe-focus/releases/download/v#{version}/VibeFocus-#{version}-macos.zip"
  name "VibeFocus"
  desc "Keyboard-driven focus timer for macOS"
  homepage "https://github.com/vibe-coding-labs/vibe-focus"

  depends_on macos: ">= :ventura"

  app "VibeFocus.app"

  zap trash: [
    "~/Library/Preferences/com.openai.vibe-focus.plist",
    "~/Library/Application Support/VibeFocus",
  ]
end
