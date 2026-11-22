cask "chort" do
  version "0.1.5"
  sha256 "15f657be6d6afba7ffa1e126a6825ca58743c254beebce4950f295a4c2667503"

  url "https://github.com/deeflect/chort/releases/download/v#{version}/chort-#{version}-mac-arm64.dmg" 
  name "chort"
  desc "Local HTML and CSS design canvas driven by coding agents over MCP"
  homepage "https://chort.design/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "chort.app"
end
