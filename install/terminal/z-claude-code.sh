#!/bin/bash

# Ensure Mise is loaded and npm is available
eval "$(~/.local/bin/mise activate bash)"

# Install Claude Code CLI
npm install -g @anthropic-ai/claude-code
