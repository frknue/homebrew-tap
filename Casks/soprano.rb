cask "soprano" do
  version "0.3.0"
  sha256 "445057bf9bd94d609caafb16d1b84a76f33fc07a945f6d433034d4f8d1dc5b32"

  url "https://github.com/frknue/soprano/releases/download/v#{version}/Soprano-#{version}.dmg"
  name "Soprano"
  desc "Native tiling terminal multiplexer for AI coding agents"
  homepage "https://github.com/frknue/soprano"

  depends_on macos: :sonoma

  app "Soprano.app"

  caveats <<~EOS
    Soprano is ad-hoc signed because the project does not have a paid Apple
    Developer membership. On first launch, macOS may block the app. If it does:

      1. Open System Settings → Privacy & Security.
      2. Scroll to Security and click "Open Anyway" for Soprano.
      3. Confirm by clicking "Open".
  EOS
end
