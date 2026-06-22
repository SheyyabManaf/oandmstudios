# O&M Studios — Booking Page: How to Put It Online (Free)

Your site is one self-contained folder:

```
website/
├── index.html        ← the page
├── images/           ← hero.jpg, booth2.jpg, bts.jpg
└── DEPLOY_GUIDE.md    ← this file
```

To preview it now: just double-click `index.html` — it opens in your browser. Everything works (buttons, form, scrolling) right on your computer.

Below are three ways to get a public link for your Instagram bio. **Easiest first.**

---

## Option 1 — Netlify Drop (fastest, ~2 minutes, no git)

1. Go to **https://app.netlify.com/drop**
2. Drag the **entire `website` folder** onto the page.
3. It instantly gives you a live URL like `random-name.netlify.app`.
4. Free account lets you rename it to something like `oandmstudios.netlify.app` and keep it permanent.
5. Paste that link in your Instagram bio. Done.

This needs **no GitHub, no commands.** Recommended if you just want it live today.

---

## Option 2 — GitHub Pages (uses your repo, free, permanent)

1. Create a free account at **github.com** (if you don't have one).
2. Click **New repository** → name it `oandm-studios-site` → set **Public** → Create.
3. On the repo page click **"uploading an existing file"** → drag in `index.html` **and** the `images` folder → **Commit changes**.
4. Go to **Settings → Pages** → under *Source* pick **Branch: main**, folder **/(root)** → **Save**.
5. Wait ~1 minute. Your site is live at `https://YOUR-USERNAME.github.io/oandm-studios-site/`.
6. Put that link in your Instagram bio.

### If you'd rather use git from your computer

```bash
cd website
git init
git add -A
git commit -m "O&M Studios booking site"
git remote add origin https://github.com/YOUR-USERNAME/oandm-studios-site.git
git branch -M main
git push -u origin main
```

Then enable Pages as in step 4 above.

> Note: there may be a leftover empty `.git` folder in this directory from setup. It's harmless — you can delete it in File Explorer before running the commands above, or just ignore it.

---

## Option 3 — Custom domain (optional, later)

Once it's live on Netlify or GitHub Pages, you can buy a domain like **oandmstudios.com** (~$12/year) and connect it in the host's settings for a fully branded link. Not needed to start.

---

## Things you may want to edit before going live

Open `index.html` in any text editor and search for these:

- **Prices** — `$450`, `$600`, `$750` and the add-on line. These are *suggested* starting prices; change to whatever you charge.
- **Phone / email / Instagram** — already set to (708) 981 5752, omstudios.official@icloud.com, @oandmstudios. Update if any are wrong.
- **The inquiry form** emails you directly (opens the sender's email app, pre-filled to your address). It works with zero setup. If you later want submissions to arrive automatically without the sender needing an email app, tell me and I'll wire it to a free Formspree endpoint.
