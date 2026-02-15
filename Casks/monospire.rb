cask "monospire" do
  version "1.2.1"
  sha256 "abfc44425ed54cf7d93deff88647f55ba006050eccb9d0a36489e16f2b2a55b8"

  url "https://github.com/CurzonMonroe/Monospire/releases/download/v1.2.1/Monospire-1.2.1-arm64.dmg"
  name "Monospire"
  desc "Native-feeling MacOS Markdown editor with dual editing views"
  homepage "https://github.com/CurzonMonroe/Monospire"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Monospire.app"

  zap trash: [
    "~/Library/Application Support/Monospire",
    "~/Library/Preferences/com.monospire.app.plist",
    "~/Library/Saved Application State/com.monospire.app.savedState",
  ]
end
