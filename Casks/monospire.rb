cask "monospire" do
  version "3.0.3"
  sha256 "df0f348a448d52ad3b8ea303902c4db1fc035213eb83f23498086e3e46833b86"

  url "https://github.com/CurzonMonroe/Monospire/releases/download/v#{version}/Monospire-#{version}-arm64.dmg"
  name "Monospire"
  desc "A focused Markdown editor"
  homepage "https://github.com/CurzonMonroe/Monospire"

  depends_on macos: :big_sur

  app "Monospire.app"
  binary "#{appdir}/Monospire.app/Contents/Resources/app/scripts/monospire-cli", target: "monospire"

  zap trash: [
    "~/Library/Application Support/Monospire",
    "~/Library/Preferences/com.monospire.app.plist",
    "~/Library/Saved Application State/com.monospire.app.savedState",
  ]
end
