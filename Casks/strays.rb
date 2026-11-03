cask "strays" do
  version "1.1"
  sha256 "28745e445f3eaa2729d7d7208f681ad6d3bfbc0da806acb6bfe593b73c5b4463"

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
