cask "movkey" do
  version "1.1.0"
  sha256 "7a5e482acdcd8d9c3b0ff03ba92e0dffcb66d49593acf709aa6445f5653349f0"

  url "https://github.com/hyppe-cc/movkey/releases/download/v#{version}/MovKey.zip"
  name "MovKey"
  desc "Turns off the keyboard backlight while a video plays in full screen"
  homepage "https://github.com/hyppe-cc/movkey"

  depends_on macos: :ventura

  app "MovKey.app"

  uninstall quit: "local.movkey"

  zap trash: "~/Library/Preferences/local.movkey.plist"
end
