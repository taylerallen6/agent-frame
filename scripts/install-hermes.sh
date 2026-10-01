#!/bin/bash

echo "Installing AgentFrame skills for Hermes..."

# Create target directory
mkdir -p ~/.hermes/skills/agentframe

# Copy skills
cp -r skills/* ~/.hermes/skills/agentframe/

echo "Done! Skills installed to ~/.hermes/skills/agentframe/"
echo "They are now available globally for all your projects."
