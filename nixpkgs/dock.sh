# Reset to "factory settings":
defaults delete com.apple.dock

# Enable + configure automatically hiding and showing the Dock
# (https://apple.stackexchange.com/a/70598/14117)
defaults write com.apple.dock autohide -bool TRUE
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.4

# Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool TRUE

# Show only active/static apps
# https://www.makeuseof.com/tag/customise-mac-os-x-dock-hidden-terminal-commands/#only-show-active-apps
defaults write com.apple.dock static-only -bool TRUE; killall Dock

# Restart the Dock
killall Dock

# Force update the Mac’s preferences database
# https://www.intego.com/mac-security-blog/unlock-the-macos-docks-hidden-secrets-in-terminal/
killall cfprefsd
