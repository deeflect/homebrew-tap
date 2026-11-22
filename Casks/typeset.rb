cask "typeset" do
  version "1.0.1"
  sha256 "8e401ce85eb3e17c2cb2da07cf99c18edcae8a666a1b4f4d2d1f6dd0a051d0c4"

  url "https://github.com/deeflect/typeset/releases/download/v#{version}/Typeset-#{version}.dmg",
      verified: "github.com/deeflect/typeset/"
  name "Typeset"
  desc "Native macOS Markdown reader with live reload, Quick Look and Typst PDF export"
  homepage "https://typeset.md/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Typeset.app"
end
