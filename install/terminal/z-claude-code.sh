#!/bin/bash

# Ensure Mise is loaded and npm is available
eval "$(~/.local/bin/mise activate bash)"

# Install Claude Code CLI globally
sudo npm install -g @anthropic-ai/claude-code
