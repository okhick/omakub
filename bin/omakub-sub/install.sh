#!/bin/bash

CHOICES=(
  "Dev Language      Install programming language environment"
  "1password         Manage your passwords securely across devices"
  "Zen               Privacy-focused browser based on Firefox"
  "Zed               Modern code editor"
  "Ghostty           Fast, feature-rich terminal emulator"
  "> All             Re-run any of the default installers"
  "<< Back           "
)

CHOICE=$(gum choose "${CHOICES[@]}" --height 10 --header "Install application")

if [[ "$CHOICE" == "<< Back"* ]] || [[ -z "$CHOICE" ]]; then
  # Don't install anything
  echo ""
elif [[ "$CHOICE" == "> All"* ]]; then
  INSTALLER_FILE=$(gum file $OMAKUB_PATH/install)

  [[ -n "$INSTALLER_FILE" ]] &&
    gum confirm "Run installer?" &&
    source $INSTALLER_FILE &&
    gum spin --spinner globe --title "Install completed!" -- sleep 3
else
  INSTALLER=$(echo "$CHOICE" | awk -F ' {2,}' '{print $1}' | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')

  case "$INSTALLER" in
  "dev-language") INSTALLER_FILE="$OMAKUB_PATH/install/terminal/select-dev-language.sh" ;;
  *) INSTALLER_FILE="$OMAKUB_PATH/install/desktop/optional/app-$INSTALLER.sh" ;;
  esac

  source $INSTALLER_FILE && gum spin --spinner globe --title "Install completed!" -- sleep 3
fi

clear
source $OMAKUB_PATH/bin/omakub
