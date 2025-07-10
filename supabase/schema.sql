-- supabase/schema.sql

-- Main paints table
CREATE TABLE IF NOT EXISTS paints (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  brand TEXT NOT NULL,
  series TEXT NOT NULL,
  code TEXT NOT NULL,
  name TEXT NOT NULL,
  type TEXT,
  finish TEXT,
  is_spray BOOLEAN DEFAULT FALSE,
  color_hex TEXT,
  data_source TEXT,
  external_ref TEXT,
  last_updated TIMESTAMP DEFAULT now()
);

-- Personal inventory table
CREATE TABLE IF NOT EXISTS user_paints (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  paint_id UUID REFERENCES paints(id) ON DELETE CASCADE,
  quantity INT DEFAULT 1,
  notes TEXT,
  acquired_date DATE DEFAULT CURRENT_DATE
);

-- Equivalent paint mapping
CREATE TABLE IF NOT EXISTS equivalents (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  paint_id UUID REFERENCES paints(id) ON DELETE CASCADE,
  equivalent_paint_id UUID REFERENCES paints(id) ON DELETE CASCADE,
  match_quality TEXT CHECK (match_quality IN ('exact','close','approximate')),
  notes TEXT
);
