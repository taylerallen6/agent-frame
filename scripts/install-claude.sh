#!/bin/bash

echo "Installing AgentFrame skills for Claude Code..."

# Create target directory
mkdir -p ~/.claude/skills

# Copy skills (flat structure for Claude compatibility)
cp -r skills/* ~/.claude/skills/

echo "Done! Skills installed to ~/.claude/skills/"
echo "They are now available globally for all your projects."
