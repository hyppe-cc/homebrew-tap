cask "strays" do
  version "1.3"
  sha256 "6693b34371995d53f49bf31e3b24ac7c8ce66c6fbe2c8d08199318dc5d3f1b89"

  url "https://github.com/hyppe-cc/strays/releases/download/v#{version}/Strays-#{version}.zip"
  name "Strays"
  desc "Find, play and clear lost photos, videos and music"
  homepage "https://github.com/hyppe-cc/strays"

  depends_on macos: :sonoma

  app "Strays.app"

  uninstall quit: "sh.hyppe.strays"

  zap trash: [
    "~/Library/Containers/sh.hyppe.strays",
    "~/Library/Application Scripts/sh.hyppe.strays",
  ]
end
