CREATE TABLE  IF NOT EXISTS rubra.user_rubra (
    id_user_rubra SERIAL PRIMARY KEY,
    name_user_rubra VARCHAR(100) NOT NULL ,
    password_user_rubra VARCHAR(100) UNIQUE NOT NULL,
    image_user_rubra VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS rubra.fate_sheet (
    id_fate_sheet SERIAL PRIMARY KEY,
    url_fate_sheet VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS rubra.dnd_sheet (
    id_dnd_sheet SERIAL PRIMARY KEY,
    url_dnd_sheet VARCHAR(200)
);
-- rubra.nome, o "rubra" é schema
CREATE TABLE IF NOT EXISTS rubra.saved_sheet (
    id_sheet SERIAL PRIMARY KEY, 
    id_fate_sheet INTEGER,
    id_dnd_sheet INTEGER,
    id_user_rubra INTEGER NOT NULL,

    CONSTRAINT fk_fate_sheet FOREIGN KEY (id_fate_sheet) REFERENCES rubra.fate_sheet(id_fate_sheet),
    CONSTRAINT fk_dnd_sheet FOREIGN KEY (id_dnd_sheet) REFERENCES rubra.dnd_sheet(id_dnd_sheet),
    CONSTRAINT fk_user_rubra FOREIGN KEY (id_user_rubra) REFERENCES rubra.user_rubra(id_user_rubra)
);