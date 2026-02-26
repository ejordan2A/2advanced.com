# 2Advanced.com

Splash and marketing site for **2Advanced Studios**, built for deployment on **Netlify**.

## Contents

- **`index.html`** – Splash page with studio branding, a primary **V3 Expansions Reboot** button (links to `/V3ExpansionsReboot/`), and links for Contact, Shop, and Patreon.
- **`netlify.toml`** – Netlify build and optional headers.

## V3 Expansions Reboot

The main CTA on the splash page points to:

**`/V3ExpansionsReboot/`**

To enable it:

1. Add a `V3ExpansionsReboot` folder in this repo (or build output).
2. Put your app’s `index.html` (or built files) inside it so that `https://2advanced.com/V3ExpansionsReboot/` serves that experience.

If V3 is a single-page app, configure your build so the app’s root is `V3ExpansionsReboot/` and Netlify serves that folder.

## Deploy on Netlify

1. Push this repo to GitHub/GitLab/Bitbucket (or use Netlify’s CLI).
2. In Netlify: **New site from Git** → choose this repo.
3. Build settings: leave **Build command** empty; **Publish directory** = `.` (root).
4. Add custom domain **2advanced.com** in Netlify and follow the DNS instructions.
5. Point your domain’s DNS to Netlify (A/CNAME as shown in the Netlify UI).

After DNS propagates, the splash page will be live and the **V3 Expansions Reboot** button will go to `https://2advanced.com/V3ExpansionsReboot/` once that folder (or route) is deployed.
