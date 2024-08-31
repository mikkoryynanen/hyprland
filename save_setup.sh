#!/bin/zsh

echo "Saving current hyprland setup..."

config_dir=$(realpath ~)"/.config"
target_dir=$(realpath ~)"/Projects/hyprland/dotfiles/.config"
shell_target_dir=$(realpath ~)"/Projects/hyprland/dotfiles"

mkdir -p "$target_dir"

cp -rv "$config_dir/hypr/" "$target_dir"
cp -rv "$config_dir/waybar/" "$target_dir"
cp -rv "$(realpath ~)/.zshrc" "$shell_target_dir"

# oh-my-posh setup
cp -rv "$config_dir/ohmyposh/" "$target_dir"
cp -rv "$config_dir/wlogout/" "$target_dir"
cp -rv "$config_dir/rofi/" "$target_dir"

echo ""
echo "Copied current setup to $target_dir folder"

