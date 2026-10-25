cask "movkey" do
  version "1.0.0"
  sha256 "43fdac68523daebc9b5559408fe1298153f5024bfabcf2564739eaa320978c4b"

  url "https://github.com/hyppe-cc/movkey/releases/download/v#{version}/MovKey.zip"
  name "MovKey"
  desc "Turns off the keyboard backlight while a video plays in full screen"
  homepage "https://github.com/hyppe-cc/movkey"

  depends_on macos: ">= :ventura"

  app "MovKey.app"

  # La app no está notarizada: se quita la cuarentena para que Gatekeeper no la bloquee.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/MovKey.app"]
  end

  uninstall quit: "local.movkey"

  zap trash: "~/Library/Preferences/local.movkey.plist"
end
