# 🎮 PixelPlay

> A zen retro music player that generates AI pixel art while you listen.

![PixelPlay Banner](docs/banner-placeholder.png)

PixelPlay is a browser-based music player built as a portfolio project during the **Anthropic AI Fluency Course**. It combines local file playback, YouTube streaming, and AI-generated pixel art into a single dreamy, pastel-aesthetic web app.

---

## ✨ Features

- 🎵 **Local file playback** — upload MP3, WAV, FLAC, OGG, M4A, AAC files
- ▶ **YouTube streaming** — paste any YouTube URL and play it directly
- 🎨 **AI pixel art display** *(coming soon)* — generates animated 32-bit style pixel art per song
- 📚 **Library tab** — Recently Played, All Songs, and Most Played sections
- ⚡ **Queue system** — Play Next, Add to Queue, reorder, and remove songs
- ⋯ **Song context menu** — Favorite, Add to Playlist, Download, Remove
- 💾 **localStorage persistence** — volume, favorites, and listening history survive page refreshes
- 🌈 **Animated pastel gradient background** — the Apple Music-inspired living backdrop
- 🔀 Shuffle and 🔁 Repeat modes
- 🎯 **Discover tab** — curated song recommendations *(AI-powered coming soon)*

---

## 🚀 Running Locally

PixelPlay requires a local server to work correctly. Browsers block audio and the YouTube API when HTML files are opened directly from disk (`file://` URLs).

### Option 1 — Python (recommended, no install needed)

```bash
# Navigate to the project folder
cd pixelplay

# Start the server
python -m http.server 8000
```

Then open your browser and go to:
```
http://localhost:8000
```

### Option 2 — Node.js (if you have it installed)

```bash
npx serve .
```

### Option 3 — VS Code Live Server extension

Install the [Live Server extension](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer), right-click `index.html`, and select **Open with Live Server**.

---

## 📁 Project Structure

```
pixelplay/
├── index.html          # Main application (HTML + CSS + JS in one file)
├── README.md           # This file
├── .gitignore          # Files Git should not track
└── docs/
    ├── PROJECT_PLAN.md # Full project plan from conception to completion
    └── ROADMAP.md      # Planned features and future development
```

> **Note:** PixelPlay is currently a single-file app (`index.html`). As features grow, it will be refactored into separate `style.css` and `script.js` files.

---

## 🛠 Tech Stack

| Layer | Technology |
|---|---|
| Structure | HTML5 |
| Styling | CSS3 (custom properties, flexbox, grid, animations) |
| Logic | Vanilla JavaScript (ES6+) |
| Audio | HTML5 Audio API |
| Streaming | YouTube IFrame Player API |
| Storage | localStorage |
| Fonts | Press Start 2P + Nunito (Google Fonts) |
| AI Art *(planned)* | Image generation API |
| Recommendations *(planned)* | Claude API |

---

## 🗺 Roadmap

### ✅ Completed
- [x] UI/UX shell — animated background, player card, sidebar, nav tabs
- [x] Local file playback with queue system
- [x] YouTube streaming integration
- [x] Library tab — Recently Played, All Songs, Most Played
- [x] Three-dot context menu — Favorite, Download, Remove, Play Next, Add to Queue
- [x] localStorage persistence for volume, history, favorites

### 🔄 In Progress
- [ ] Song metadata extraction (artist, album from file tags)
- [ ] AI pixel art generation per song

### 📋 Planned
- [ ] Playlists — create, edit, delete
- [ ] Heart/favorites dedicated view
- [ ] AI-powered song recommendations (Claude API)
- [ ] Similar songs discovery
- [ ] User accounts + cloud sync (backend required)
- [ ] Mobile responsive layout
- [ ] Keyboard shortcuts
- [ ] Visualizer / waveform display

---

## 🤖 AI Fluency Context

This project was built as the capstone project for the **Anthropic AI Fluency Course**, specifically the **Delegation Module**. It demonstrates the four D's framework:

- **Delegation** — identifying which tasks to hand off to AI vs. handle with human judgment
- **Description** — writing precise prompts that specify product, process, and performance
- **Discernment** — evaluating AI output critically at each step before accepting it
- **Diligence** — validating results and maintaining accountability for the final product

A full report documenting how AI was used throughout development is in [`docs/PROJECT_PLAN.md`](docs/PROJECT_PLAN.md).

---

## 👩🏾‍💻 Author

**Cookie (Noel Mills-Odoi)**
- GitHub: [@nmillso1](https://github.com/nmillso1)
- LinkedIn: [linkedin.com/in/your-profile](https://linkedin.com/in/your-profile)

---

## 📄 License

This project is open source under the [MIT License](LICENSE).
