# PixelPlay — Project Plan & AI Fluency Documentation

> Created during the Anthropic AI Fluency Course — Delegation Module  
> Author: Noel Mills-Odoi (Cookie)  
> Date: July 2026

---

## Project Vision

**PixelPlay** is a browser-based music player that streams music from YouTube or plays locally uploaded files. When a song plays, the app calls an AI image generation API to create animated 32-bit style pixel art of the artist or album — displayed as the live "now playing" visual. The design is zen and retro: soft shifting pastel gradients, frosted glass cards, and pixel fonts.

### Success Criteria
- A working web app usable for real daily music listening
- Streaming + local file upload both functional
- AI-generated pixel art that updates on each song change
- Polished enough to include in a software engineering portfolio
- New skills practiced: API integration, prompt engineering, frontend design

---

## Task Breakdown & Delegation Plan

| Task | Human Brings | AI Brings | Collaboration Impact |
|---|---|---|---|
| UI/UX Design | Aesthetic taste, portfolio goals, vibe decisions | Layout code, CSS, component structure | High — taste shapes what AI builds |
| Music Playback | API key setup, feature priorities, testing | Integration code, error handling, audio API | High — human decisions unlock implementation |
| AI Pixel Art | Prompt direction, quality judgment, style choices | API calls, prompt engineering, animation logic | Very High — iterative creative loop |
| Metadata Handling | Defining what data matters | Parsing file tags, wiring to art prompts | Medium — scoping is human, wiring is AI |
| Offline Support | Deciding which features work without connection | LocalStorage logic, fallback states | Medium — decision is human, code is AI |
| Polish & Testing | Final feel judgment, edge case spotting | Debugging, responsiveness fixes | High — human eye catches what AI misses |

---

## The Four D's in Practice

This project was built using the AI Fluency Framework's four core competencies. Here's how each one was applied.

---

### 1. Delegation

**What it means:** Deciding which tasks to hand off to AI and which require human judgment.

**How it was applied:**

At the start of the project, a delegation analysis was done for every major task. The key question for each was: *does this require human creativity, taste, or judgment — or is it implementation work AI can handle?*

**Delegated to AI:**
- Writing all HTML, CSS, and JavaScript
- Implementing the YouTube IFrame API integration
- Building the queue system logic
- Wiring up localStorage
- Writing all beginner-friendly code comments

**Kept as human judgment:**
- The visual vibe ("zen retro, soft colors that blur together, like Apple Music")
- Which features to include and in what order
- Evaluating whether the output felt right
- All final decisions on what to keep, change, or throw out

**Key insight:** The pixel art era choice was delegated after providing aesthetic direction. AI proposed "32-bit era with a pastel twist" — the human evaluated it and accepted it because it matched the brief. This is delegation working correctly: AI proposes, human decides.

---

### 2. Description

**What it means:** Communicating with AI clearly — specifying product, process, and performance.

**How it was applied:**

Every major build prompt was structured with all three description types:

**Product Description** — what the output should be:
> "Design the HTML and CSS shell for the app — no JavaScript functionality yet, just the layout and visual design. Include: a now-playing area with a placeholder pixel art display, playback controls, a song info area, a sidebar panel for recommendations, and a top navigation with a Discover tab."

**Process Description** — how AI should approach it:
> "Use a retro pixel-art inspired font for headings and clean sans-serif for body text. The background should be a slowly animated soft pastel gradient."

**Performance Description** — how AI should behave during collaboration:
> "Add detailed beginner-friendly comments throughout the code explaining what each section does and why. Be detailed and educational — explain what each piece does as we go."

**Key insight:** The performance description ("be educational, add beginner-friendly comments") was the most impactful. It changed not just the output but the entire collaboration dynamic — every code file became a learning resource, not just a deliverable.

---

### 3. Discernment

**What it means:** Critically evaluating AI output — product, process, and performance.

**How it was applied:**

After each task, the output was evaluated before moving on:

**Product Discernment examples:**
- After Task 1 (UI): "I love how it looks" — accepted. Clear pass.
- After Task 2 (playback): Identified that audio didn't work → correctly diagnosed as a `file://` browser restriction, not a code bug. This required knowing enough about how browsers work to evaluate the output accurately.
- After Task 3 (library): Identified that the ＋ button should be a ⋯ three-dot menu — caught a design gap AI didn't anticipate.

**Process Discernment examples:**
- Caught that the queue insertion logic needed `splice()` to insert at a specific index rather than `push()` — reviewed the explanation and confirmed it was correct.
- Verified that `escapeHTML()` was actually necessary and understood why (XSS prevention).

**Performance Discernment:**
- The hardest type to apply — noted when explanations were too brief or assumed too much background knowledge.

**Key insight:** Discernment was most effective when the human had enough context to ask specific questions ("why does this use splice instead of push?") rather than just accepting the output.

---

### 4. Diligence

**What it means:** Ongoing validation, accountability, and transparency about AI's role.

**How it was applied:**

- **Testing each task before moving on:** Every feature was opened in a browser and manually tested before starting the next task.
- **Catching regressions:** When the three-dot menu was added, the existing queue logic was re-tested to confirm it still worked.
- **Accountability:** All final decisions (feature scope, design direction, what to include in the repo) were made by the human, not AI.
- **Transparency:** This document exists specifically to be transparent about AI's role in the project — it contributed code, explanations, and structure, while the human contributed vision, evaluation, and judgment.
- **LocalStorage as a validation loop:** The diligence loop extended to the data layer — after implementing history tracking, the browser console was checked to confirm history was actually being saved correctly.

**Key insight:** Diligence isn't just testing at the end — it's a continuous loop that runs in parallel with every other D. Every time a new task was built on top of a previous one, the previous task was re-validated.

---

## How AI Was Used as a Contributor

AI (Claude) played the role of a skilled implementation partner throughout this project. Specifically:

| Contribution | What AI Did | What Human Did |
|---|---|---|
| Architecture | Proposed the single-file HTML approach for simplicity | Approved it as appropriate for a portfolio project |
| CSS design system | Built the full variable-based color palette and animation | Specified the vibe ("zen, retro, pastel, Apple Music-like") |
| JavaScript logic | Wrote all queue, library, localStorage, and audio code | Specified behavior requirements and evaluated correctness |
| Code comments | Wrote all beginner-friendly explanations | Requested educational tone; reviewed for accuracy |
| Bug diagnosis | Identified `file://` as the cause of audio not playing | Confirmed the diagnosis by testing the Python server fix |
| Feature suggestions | Proposed localStorage as a stepping stone before accounts | Approved after understanding the tradeoff |
| Documentation | Generated README, ROADMAP, and this document | Specified what to include; will update as project grows |

AI did not make any final decisions. Every feature, every design choice, and every tradeoff was approved by the human before being kept.

---

## Lessons Learned

1. **Performance description is the hardest and most valuable.** Specifying "be educational, add beginner comments" transformed the entire collaboration from code generation to genuine learning.

2. **Discernment requires enough knowledge to ask good questions.** The more you understand about what you're building, the better you can evaluate AI's output.

3. **Delegation is not all-or-nothing.** The best results came from delegating implementation while keeping judgment. The UI vibe was human; the CSS that achieved it was AI.

4. **Diligence means testing before moving on.** Every task that skipped testing created problems in the next one.

5. **AI is a great architectural thinking partner.** The localStorage-as-stepping-stone suggestion (before full user accounts) came from a genuine back-and-forth conversation — not a single prompt.
