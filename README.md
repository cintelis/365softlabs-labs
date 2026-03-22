# 365softlabs-labs

Nextra 4 documentation site for `labs.365softlabs.com`.

Project root:

`C:\code\365softlabs-labs`

## Stack

- Next.js
- Nextra (`nextra-theme-docs`)
- Static export (`output: export`)
- Pagefind for local/offline search index

## Local development

```powershell
npm install
npm run dev
```

## Build and export

```powershell
npm run build
```

Build flow:

- Next.js static export to `out/`
- Postbuild Pagefind index to `out/_pagefind`

## Serve built output (optional)

```powershell
npm run start
```

## Deploy to Cloudflare Pages

Recommended settings:

- Framework preset: `None`
- Build command: `npm run build`
- Output directory: `out`
- Production domain: `labs.365softlabs.com`

## Content structure

- `content/` -> landing content and installer pointers (docs now hosted at https://365softlabs.com/docs/)
- `app/` -> Next.js app shell/layout
- `public/` -> static assets and installer artifacts

## Installer assets

- `public/cli/install.sh`
- `public/cli/install.ps1`

If you publish CLI binaries/scripts, keep these paths aligned with the website install commands.

## Scripts

- `npm run dev`
- `npm run build`
- `npm run postbuild`
- `npm run start`


## Security & Secrets

This repository is public. Keep all sensitive values out of version control.

Never commit:

- Cloudflare API tokens / account secrets
- `.env` files containing real credentials
- private deployment-only identifiers if your policy treats them as sensitive

Use placeholders in docs/examples:

- `<PAGES_PROJECT_NAME>`
- `<R2_BUCKET_NAME>`
- `<CUSTOM_DOMAIN>`

Recommended before push:

- Run secret scanning (for example GitHub secret scanning or gitleaks)
- Review static assets and config changes for unintended disclosures
