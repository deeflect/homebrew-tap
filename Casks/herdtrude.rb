cask "herdtrude" do
  version "0.2.1"
  sha256 "9423d1ffc1134fd47483757aefdbeb3978797be1abe0c49cf573edfead55da53"

  url "https://github.com/deeflect/herdtrude/releases/download/v#{version}/Herdtrude_#{version}_aarch64.dmg",
      verified: "github.com/deeflect/herdtrude/"
  name "Herdtrude"
  desc "Menu-bar and window monitor for parallel Claude Code, Codex, Cursor and OpenCode sessions"
  homepage "https://herdtrude.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Herdtrude.app"
end
