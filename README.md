# Tap Test (Godot 4)

Minimaal testproject om de mobiele pipeline te bewijzen: touch-input, rendering (tween + polygons)
en een scene-wissel. Tik 10× → scene "PIPELINE OK".

- Openen: Godot 4 → Import → `project.godot`
- **iOS (hoofdroute, iPhone via gratis Apple-ID):** `./export-ios.sh` → Xcode opent →
  volg `~/jarvis/docs/ios-export-handleiding.md`
- Android-APK (headless, alleen als er ooit een Android-toestel is):
  `godot --headless --export-debug Android build/tap-test.apk`
- Gebouwd door de JARVIS Godot-agent (Claude Code), 18 sep 2026.

Export-presets staan in `export_presets.cfg`. Het iOS-preset heeft team-ID `XXXXXXXXXX` als
placeholder: kies in Xcode je eigen team onder Signing & Capabilities (dat overschrijft 'm).
