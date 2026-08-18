cask "monospire" do
  version "2.7.0"
  sha256 "355be281110b8a6c27c59fb6c2396083cfe384bb72e99c37cfda5f9d982942d5"

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
