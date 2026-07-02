# Canonical source for the Homebrew cask. Copy this file into the tap repo
# `greggoire/homebrew-tap` at `Casks/run-cockpit.rb` on each release, updating
# `version` and `sha256` from `scripts/release.sh` output.
#
# The app is unsigned/not notarized. After install, users must clear quarantine:
#   brew install --cask greggoire/tap/run-cockpit
#   xattr -dr com.apple.quarantine /Applications/RunCockpit.app
cask "run-cockpit" do
  version "1.0"
  sha256 "e589108b385978e2d87ad9b559940e5932c38793739fa52f716dbdf220b5b4fe"

  url "https://github.com/greggoire/run-cockpit/releases/download/v#{version}/RunCockpit.dmg"
  name "RunCockpit"
  desc "Dashboard for watching live Claude Code sessions"
  homepage "https://github.com/greggoire/run-cockpit"

  depends_on macos: :sequoia # macOS 15+ minimum

  app "RunCockpit.app"

  zap trash: "~/Library/Application Support/RunCockpit"
end
