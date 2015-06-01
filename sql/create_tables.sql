-- Lisää CREATE TABLE lauseet tähän tiedostoon
CREATE TABLE F_USER (
    id SERIAL PRIMARY KEY,
    username varchar(50) NOT NULL,
    password varchar(50) NOT NULL,
    role integer
);

CREATE TABLE F_MESSAGEGROUP (
    id SERIAL PRIMARY KEY,
    messagegroup_name varchar(50) NOT NULL
);

CREATE TABLE F_MESSAGE (
    id SERIAL PRIMARY KEY,
    topic varchar(50) NOT NULL,
    message varchar(1000),
    added DATE,
    modified timestamp DEFAULT current_timestamp,
    messagegroup_id integer REFERENCES F_MESSAGEGROUP(id)
);