cask "strays" do
  version "1.2"
  sha256 "6df88b7e039316c7c44c6e5b023db5d53c1ece86b7b1f198e1abae3f150165b1"

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
