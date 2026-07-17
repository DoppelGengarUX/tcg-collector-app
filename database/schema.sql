CREATE TABLE card_set (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    series TEXT,
    release_date DATE
);