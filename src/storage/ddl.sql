create table user (
    id_user SERIAL PRIMARY KEY,
    name_user VARCHAR(100) NOT NULL 
);

create table identity (
    id_identity SERIAL PRIMARY KEY,
    character_name_identity VARCHAR(100),
    description_identity VARCHAR(200)
);

create table consequences (
    id_consequences SERIAL PRIMARY KEY,
    soft_consequences VARCHAR(100),
    moderate_consequences VARCHAR(100),
    hard_consequences VARCHAR(100)
);

create table aspects (
    id_aspects SERIAL PRIMARY KEY;
);

create table saved_sheet (
    id_sheet SERIAL PRIMARY KEY, 
    CONSTRAINT fk_fate FOREIGN KEY (id_fate) REFERENCES fate(id_fate),
    CONSTRAINT fk_dnd FOREIGN KEY (id_dnd) REFERENCES dnd(id_dnd),
    CONSTRAINT fk_user FOREIGN KEY (id_user) REFERENCES user(id_user)
);