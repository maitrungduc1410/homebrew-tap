cask "native-screen" do
  version "1.0.7"
  sha256 "65bd035f1dcb540afb735f694c209e2759eebf5e55afb795f161a5842a8a92aa"

  url "https://github.com/maitrungduc1410/NativeScreen/releases/download/v#{version}/NativeScreen.dmg"
  name "Native Screen"
  desc "Screen recorder and video editor"
  homepage "https://nativescreen.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself with Sparkle, so brew leaves updates to it.
  auto_updates true
  depends_on macos: :sonoma

  app "Native Screen.app"

  # Projects in ~/Native Screen Projects are user files and are kept.
  zap trash: [
    "~/Library/Application Support/NativeScreen",
    "~/Library/Caches/com.dmai.NativeScreen",
    "~/Library/HTTPStorages/com.dmai.NativeScreen",
    "~/Library/Preferences/com.dmai.NativeScreen.plist",
    "~/Library/Saved Application State/com.dmai.NativeScreen.savedState",
  ]
end
