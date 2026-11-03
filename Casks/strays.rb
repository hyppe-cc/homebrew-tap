cask "strays" do
  version "1.0"
  sha256 "f3a7e4f16d2c639cc4addd707eb7c6251fe6c8c8508f88ea49c97e6c320cf00c"

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
