cask "vibefocus" do
  version "0.0.4"
  sha256 "ee8933281176f8219951b3c4c72e1723d58affe950d140c5912ae445bf6f67ec"

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
