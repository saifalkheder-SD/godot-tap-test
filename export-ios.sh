#!/bin/zsh
# Exporteert het Godot-project naar een Xcode-project in build/ios/ en opent het.
# Draaien vanuit de projectmap: ./export-ios.sh
set -e
cd "$(dirname "$0")"
godot --headless --export-debug iOS build/ios/tap_test.xcodeproj
echo "✓ Xcode-project staat in build/ios/tap_test.xcodeproj"
open build/ios/tap_test.xcodeproj
