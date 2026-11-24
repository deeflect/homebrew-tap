cask "typeset" do
  version "1.1.0"
  sha256 "ae45fa6a5ba4000dd581ef3bd119a0649d7244d5a94f24c497556a6c7ba3a324"

  url "https://github.com/deeflect/typeset/releases/download/v#{version}/Typeset-#{version}.dmg"
  name "Typeset"
  desc "Native macOS Markdown reader with live reload, Quick Look, Mermaid and LaTeX"
  homepage "https://typeset.md/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Typeset.app"
end
