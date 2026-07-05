#!/bin/bash
# PixelPlay Quick Start
# Starts a local server so audio and YouTube playback work correctly.
# Run this script from the pixelplay/ folder.

echo "🎮 Starting PixelPlay..."
echo "📡 Opening at http://localhost:8000"
echo "Press Ctrl+C to stop the server."
echo ""

python -m http.server 8000
