cask "native-screen" do
  version "1.0.10"
  sha256 "ef81bacdb4879f81750f879e0f0cc9767710a7aeb869501fe5b0e0c93e64de24"

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
