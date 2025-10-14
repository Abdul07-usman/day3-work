CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) UNIQUE NOT NULL,
  password VARCHAR(200) NOT NULL
);

-- Insert a sample user with hashed password ("password123")
INSERT INTO users (username, password)
VALUES ('sadiq', '$2b$10$tMsJs6v1o7Hf/mkFYT5SvuXR2m.blJ1aEK9ctZuETCHHRb8n/bB8G')
ON CONFLICT (username) DO NOTHING;
