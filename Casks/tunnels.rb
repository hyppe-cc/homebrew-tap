cask "tunnels" do
  version "1.0.0"
  sha256 "d2fca76fe3f119b558c7cbf9cf5374b1d560911b86207050630b004be7a7048f"

  url "https://github.com/hyppe-cc/tunnels/releases/download/v#{version}/Tunnels.zip"
  name "Tunnels"
  desc "Share local projects on your own domain through Cloudflare tunnels"
  homepage "https://github.com/hyppe-cc/tunnels"

  depends_on macos: :tahoe
  depends_on formula: "cloudflared"

  app "Tunnels.app"
  binary "#{appdir}/Tunnels.app/Contents/MacOS/tunnel"

  uninstall quit: "cc.hyppe.tunnels"

  zap trash: [
    "~/.config/tunnel",
    "~/Library/Logs/tunnel",
  ]

  caveats <<~EOS
    Log in to Cloudflare once:  cloudflared tunnel login
    Set your domain:            tunnel domain example.com
    Running tunnels keep going after uninstalling; run `tunnel clean` first to remove them.
  EOS
end
