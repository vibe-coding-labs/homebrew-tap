cask "vibefocus" do
  version "0.0.4"
  sha256 "615f5c81dcc0f79815be2cbf09533f8b63c5000618a45807a521aa7eb6e6904c"

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
