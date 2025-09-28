# Pokémon TCG Pocket Hub

Minimal, secure, and dynamic hub for Pokémon TCG Pocket: deck building, pack simulation, tournaments, ads, and more.

## 🚀 Deploy

Click below to deploy instantly to Vercel:

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/your-username/pokemon-tcg-pocket&env=NEXT_PUBLIC_SUPABASE_URL,NEXT_PUBLIC_SUPABASE_ANON_KEY,SUPABASE_SERVICE_KEY,NEXT_PUBLIC_POKEMON_API,NEXT_PUBLIC_ADSENSE_PUB)

Replace `your-username` with your GitHub username once you push this repo.

## ⚙️ Environment Variables

- `NEXT_PUBLIC_SUPABASE_URL`
- `NEXT_PUBLIC_SUPABASE_ANON_KEY`
- `SUPABASE_SERVICE_KEY`
- `NEXT_PUBLIC_POKEMON_API`
- `NEXT_PUBLIC_ADSENSE_PUB`

## 📦 Setup (local)

```bash
npm install
npm run dev
```

## 🗄️ Database

Upload the provided `supabase_schema.sql` to Supabase.

## 🔄 CI/CD

This repo includes a GitHub Actions workflow (`.github/workflows/deploy.yml`) that auto-deploys to Vercel when you push to `main`.
