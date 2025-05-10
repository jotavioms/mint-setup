#!/bin/bash
# Backup seguro de configurações para repositório Git (sem arquivos sensíveis de hardware)

BACKUP_DIR=~/mint-config-backup
mkdir -p $BACKUP_DIR

# Shell/terminal
cp ~/.zshrc $BACKUP_DIR/
cp ~/.p10k.zsh $BACKUP_DIR/
mkdir -p $BACKUP_DIR/terminal/
cp -r ~/.config/tilix $BACKUP_DIR/terminal/ 2>/dev/null || true

# Programs
mkdir -p $BACKUP_DIR/config/
cp -r ~/.config/guitarix $BACKUP_DIR/config/ 2>/dev/null || true
cp -r ~/.config/Code/User $BACKUP_DIR/config/vscode 2>/dev/null || true
cp -r ~/.config/obs-studio $BACKUP_DIR/config/obs-studio 2>/dev/null || true

# Fonts
mkdir -p $BACKUP_DIR/fonts
cp -r ~/.local/share/fonts/* $BACKUP_DIR/fonts/ 2>/dev/null || true

echo "Backup done in: $BACKUP_DIR"
