# PixelPlay — Development Roadmap

This document tracks planned features, known issues, and the development timeline for PixelPlay.

---

## Phase 1 — Foundation ✅ Complete

| Feature | Status |
|---|---|
| Animated pastel gradient background | ✅ Done |
| Player card UI (art display, controls, progress bar) | ✅ Done |
| Library tab (Recently Played, All Songs, Most Played) | ✅ Done |
| Discover tab (placeholder cards) | ✅ Done |
| Sidebar recommendations panel | ✅ Done |
| Local file upload + playback | ✅ Done |
| YouTube streaming via IFrame API | ✅ Done |
| Queue system (Play Next / Add to Queue) | ✅ Done |
| Three-dot context menu (Favorite, Download, Remove) | ✅ Done |
| localStorage: volume, history, favorites | ✅ Done |
| Shuffle + Repeat modes | ✅ Done |
| Similar song nudge popup | ✅ Done |

---

## Phase 2 — AI Integration 🔄 In Progress

| Feature | Status | Notes |
|---|---|---|
| Song metadata extraction | 🔄 Next | Read ID3 tags from MP3 files for artist/album |
| AI pixel art generation | 🔄 Next | Call image generation API on song load |
| Pixel art animation | 📋 Planned | Subtle CSS animation on the generated image |
| AI song recommendations | 📋 Planned | Use Claude API + listening history |
| Similar songs discovery | 📋 Planned | Powered by listening history + Claude |

---

## Phase 3 — User Features 📋 Planned

| Feature | Status | Notes |
|---|---|---|
| Playlists — create and manage | 📋 Planned | localStorage-based, no backend needed |
| Favorites dedicated view | 📋 Planned | Filter library by favorited songs |
| Playlist import/export | 📋 Planned | Save as JSON file |
| Search within library | 📋 Planned | Filter songs by name |

---

## Phase 4 — Polish + Scale 📋 Future

| Feature | Status | Notes |
|---|---|---|
| Mobile responsive layout | 📋 Future | Redesign for small screens |
| Keyboard shortcuts | 📋 Future | Space = play/pause, arrows = skip |
| Waveform visualizer | 📋 Future | Web Audio API |
| User accounts + cloud sync | 📋 Future | Requires backend (Node.js + database) |
| Offline PWA support | 📋 Future | Service workers for true offline mode |
| Refactor into CSS/JS files | 📋 Future | Split index.html into separate files |

---

## Known Issues

| Issue | Priority | Notes |
|---|---|---|
| Must run via local server (not `file://`) | High | Documented in README — Python workaround provided |
| File objects lost on page reload | Medium | Requires backend to persist uploaded files |
| YouTube API blocks `file://` URLs | High | Fixed by local server workaround |
| No ID3 tag reading yet | Medium | Phase 2 feature |

---

## Contributing

This is a personal portfolio project but feedback and suggestions are welcome via GitHub Issues.
