# ░▒▓  A C S H E E T  ▓▒░
### *The Wireless Auditor's Field Companion*

```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  |  Written in the spirit of the old underground zines  |
  |  Pass it on.  Share the knowledge.  Stay curious.    |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
```

---

> *"The best tool is the one you already know how to use."*
> — scrawled on a napkin, somewhere between a CTF and cold coffee

---

## ✦  What Is This Thing, Anyway

So you've found yourself staring at a terminal again, half-remembering
whether it was `-0` or `-00` for deauth, and whether the wordlist flag
comes before or after the capture file.

We've all been there.

`acsheet` is a command you install once — a dead-simple cheat sheet
that lives in your terminal, always one keystroke away. No browser.
No scrolling through a five-year-old forum thread. No ads. Just the
commands, clean and coloured, right in front of you.

Think of it like a crib sheet tucked into the front pocket of your
field notebook. Worn at the edges. Reliable.

---

## ✦  Getting It Onto Your Machine

Open a terminal. Type these four lines. That's all.

```bash
git clone https://github.com/YOUR_USERNAME/aircrack-cheatsheet.git
cd aircrack-cheatsheet
chmod +x install.sh
./install.sh
```

The installer drops `acsheet` into `/usr/local/bin` — which means it's
available everywhere, in every tab, from this moment forward.

No Python environment to activate. No `npm install`. No fussing.
Just a shell script doing what shell scripts do best.

---

## ✦  How To Use It

### The quick version —

```bash
acsheet
```

That's it. Full cheat sheet. Colour coded. Scrollable.

---

### The smarter version —

You don't always need everything. Sometimes you just need one thing fast.
That's what the topics are for.

```
acsheet workflow     ← the standard 5-step attack, start to finish
acsheet monitor      ← airmon-ng, killing noisy processes, interface tricks
acsheet scan         ← airodump-ng, targeting APs, saving captures
acsheet handshake    ← capturing WPA/WPA2, deauth methods, client targeting
acsheet crack        ← aircrack-ng, hashcat, wordlist chaining
acsheet wep          ← legacy WEP — fake auth, ARP replay, the old ways
acsheet advanced     ← evil twin, PMKID, converting for hashcat
acsheet wordlists    ← where the good lists live on Kali and Parrot
acsheet oneliner     ← a full attack, copy-paste ready
acsheet help         ← all topics listed out
```

You'll find yourself using `acsheet crack` and `acsheet handshake`
the most, probably. At least, that's been my experience.

---

## ✦  Why I Bothered Making This

Here's the honest version:

I kept switching between windows mid-session. Capture terminal. Browser.
Notes. Back to terminal. It's distracting. When you're in the middle of
a test, context-switching is the enemy of focus.

I wanted something I could invoke without leaving the shell.
Something that felt like *my* notes — not a wiki, not a manual,
not a wall of monospaced text with no hierarchy.

So I wrote `acsheet`. It took an afternoon. It's saved me more time
than that already.

---

## ✦  The Benefits, Plainly Stated

**It's always there.**
No internet needed. No browser. Works on an air-gapped machine,
a live USB boot, a VPS with no desktop. If bash is there, acsheet works.

**It's fast.**
`acsheet crack` takes less time to type than unlocking your phone
to google the same thing. Your flow doesn't break.

**It's readable.**
Yellow for descriptions. White for commands. Green for code examples.
Dim text for the stuff that matters less. It's not fancy — it's *legible.*

**It's focused.**
Every topic is one screen, or close to it. No twenty-paragraph
explanations. No SEO padding. Just the thing you need.

**It's yours.**
Fork it. Edit the `bin/acsheet` file. Add your own sections —
your custom scripts, your preferred wordlists, your lab's naming scheme.
It's two-hundred lines of bash. You don't need to be a programmer
to modify it.

**It doesn't phone home.**
No telemetry. No update pings. No accounts. A script that runs
and then is silent. Like a good tool ought to be.

---

## ✦  For The Curious — What's Under The Hood

```
aircrack-cheatsheet/
│
├── bin/
│   └── acsheet          the command itself — pure bash, ~200 lines
│
├── install.sh           copies acsheet to /usr/local/bin
├── uninstall.sh         removes it cleanly
├── README.md            the GitHub-facing introduction
└── LICENSE              MIT — use it, share it, change it
```

Nothing hidden. Nothing clever. Read the source if you like —
it's meant to be read.

---

## ✦  Removing It

If you ever want it gone —

```bash
./uninstall.sh
```

Or just:

```bash
sudo rm /usr/local/bin/acsheet
```

Clean break. No traces. The way it should be.

---

## ✦  A Word On Responsibility

This tool is for people who are learning, testing, and practising
on networks they own or have been given permission to examine.

Wireless security testing is a skill that takes time to build properly.
Do it right. Build a lab. Use your own router. Get written permission
before you touch anyone else's network.

Knowing how an attack works is not the same as doing it irresponsibly.

---

## ✦  One Last Thing

If this saves you five minutes, great.
If it becomes part of your workflow, even better.

Share it with whoever might find it useful.
That's how this kind of thing is supposed to travel —
person to person, terminal to terminal, the old way.

```
  ·  ·  ·
```

*— written on a quiet Tuesday, coffee going cold, terminal open*

---

```
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
  acsheet  ·  MIT License  ·  For educational use only
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
```
