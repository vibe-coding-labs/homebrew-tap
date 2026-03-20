cask "vibefocus" do
  version "0.0.2"
  sha256 "b2a027701647c854ec91ac2e9581e6d4aa6017fe18a02f233101c54075498d66"

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
