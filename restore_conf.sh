#!/bin/bash
REPO_URL="https://github.com/jotavioms/mint-setup"
DEST_DIR=~/mint-temp-restore

git clone $REPO_URL $DEST_DIR

# Shell configs
cp $DEST_DIR/.zshrc ~/
cp $DEST_DIR/.p10k.zsh ~/

# Terminal/themes
cp -r $DEST_DIR/terminal/tilix ~/.config/ 2>/dev/null || true
cp -r $DEST_DIR/fonts/* ~/.local/share/fonts/ 2>/dev/null || true

# Programs
cp -r $DEST_DIR/config/guitarix ~/.config/ 2>/dev/null || true
cp -r $DEST_DIR/config/vscode ~/.config/Code/User/ 2>/dev/null || true
cp -r $DEST_DIR/config/obs-studio ~/.config/ 2>/dev/null || true

echo "Restore done! Rebooting..."
sleep 5
reboot
