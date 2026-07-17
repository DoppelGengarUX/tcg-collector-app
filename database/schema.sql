-- This SQL script defines the schema for a card collection application

-- No dependencies.
CREATE TABLE card_set (
    id SERIAL PRIMARY KEY,  
    name TEXT NOT NULL,
    series TEXT,
    release_date DATE
);

CREATE TABLE app_user ( 
    id SERIAL PRIMARY KEY,  
    username TEXT NOT NULL UNIQUE,
    email TEXT NOT NULL UNIQUE,
    password_hash TEXT,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Depends on card_set.
CREATE TABLE card (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    rarity TEXT,
    image_url TEXT,
    set_id INTEGER NOT NULL REFERENCES card_set(id)
);

-- Depends on card_set
    CREATE TABLE sealed_product (
        id SERIAL PRIMARY KEY,
        name TEXT NOT NULL,
        product_type TEXT,
        set_id INTEGER NOT NULL REFERENCES card_set(id),
        image_url TEXT
    );

    -- Depends on card and app_user.
    CREATE TABLE collection_entry (
        id SERIAL PRIMARY KEY,
        user_id INTEGER NOT NULL REFERENCES app_user(id),
        card_id INTEGER NOT NULL REFERENCES card(id),
        quantity INTEGER NOT NULL DEFAULT 1,
        UNIQUE(user_id, card_id)
    );

    -- Depend on card.
    CREATE TABLE card_price_history (
        id SERIAL PRIMARY KEY,
        user_id INTEGER NOT NULL REFERENCES app_user(id),
        card_id INTEGER NOT NULL REFERENCES card(id),
        price NUMERIC NOT NULL,
        recorded_at TIMESTAMP DEFAULT NOW()
    );

    -- Depends on sealed_product
    CREATE TABLE sealed_product_price_history (
        id SERIAL PRIMARY KEY,
        user_id INTEGER NOT NULL REFERENCES app_user(id),
        sealed_product_id INTEGER NOT NULL REFERENCES sealed_product(id),
        price NUMERIC NOT NULL,
        recorded_at TIMESTAMP DEFAULT NOW()
    );