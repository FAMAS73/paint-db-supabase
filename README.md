# Paint DB – Supabase Schema

This repo sets up the Supabase backend for your paint collection app.

## ✅ Setup Steps

1. Create a new project at [supabase.com](https://supabase.com).
2. Copy the `schema.sql` file into Supabase’s SQL Editor (under SQL → Query) and run it.
3. Ensure your tables `paints`, `user_paints`, and `equivalents` are created.
4. Generate and copy your `anon` and `service_role` keys (Settings → API).
5. Use these in future scripts to import data (`push_to_supabase.py`, etc.).

## 🛠️ Next Tasks

- Build data ingestion scripts (e.g., `fetch_mr_hobby_json.py`)
- Test manual inserts via Supabase UI
- Plan for future Next.js integration
