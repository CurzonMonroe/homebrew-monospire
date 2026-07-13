cask "monospire" do
  version "2.5.0"
  sha256 "a2395e59227d13cf85f846b96de6fff0cb1093212162f21f8fac92a373a49354"

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
