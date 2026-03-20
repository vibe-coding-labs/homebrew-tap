cask "vibefocus" do
  version "0.0.3"
  sha256 "9135e54b12929d00803ef4d6ae9f918ba8600961f499df9d02923f8ecfd08238"

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
