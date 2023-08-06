-- data.sql

-- Create the tables
CREATE TABLE companies (
  code TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT
);

CREATE TABLE invoices (
  id SERIAL PRIMARY KEY,
  comp_code TEXT REFERENCES companies (code) ON DELETE CASCADE NOT NULL,
  amt FLOAT NOT NULL,
  paid BOOLEAN DEFAULT false NOT NULL,
  paid_date DATE,
  add_date DATE NOT NULL DEFAULT CURRENT_DATE
);

-- Insert some initial data
INSERT INTO companies (code, name, description) VALUES
  ('apple', 'Apple Inc.', 'Maker of iPhones and MacBooks'),
  ('microsoft', 'Microsoft Corporation', 'Technology company');

INSERT INTO invoices (comp_code, amt, paid, paid_date) VALUES
  ('apple', 300, false, null),
  ('apple', 450, true, '2023-07-31'),
  ('microsoft', 200, false, null);