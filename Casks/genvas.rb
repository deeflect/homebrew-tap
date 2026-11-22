cask "genvas" do
  version "1.4.1"
  sha256 "b5052af08c67cd7c5e5c18676321732fbf7c39acb1c4e98faef71ce0a1a2ba1c"

  url "https://github.com/deeflect/genvas/releases/download/v#{version}/Genvas_#{version}_aarch64.dmg",
      verified: "github.com/deeflect/genvas/"
  name "Genvas"
  desc "Desktop node canvas for AI image, video, audio and 3D pipelines over local MCP"
  homepage "https://genvas.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Genvas.app"
end
