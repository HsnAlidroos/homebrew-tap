cask "xcache" do
  version "1.5.0"
  sha256 "1e1ddc4fced4c2ec3200f398b692e8cd52b0e3870e4e9fef81a4b789491e5ebf"

  url "https://github.com/HsnAlidroos/xcache-releases/releases/download/v#{version}/Xcache-#{version}-meta.dmg"
  name "Xcache"
  desc "Find and safely clean developer caches"
  homepage "https://github.com/HsnAlidroos/xcache-releases"

  depends_on macos: ">= :sonoma"

  app "Xcache.app"
  binary "#{appdir}/Xcache.app/Contents/MacOS/Xcache", target: "xcache"

  zap trash: [
    "~/Library/Application Support/app.xcache",
    "~/Library/Caches/app.xcache",
    "~/Library/Preferences/app.xcache.plist",
  ]
end
