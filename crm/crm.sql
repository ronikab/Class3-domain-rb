-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES

create table contacts (
contact_id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name text,
last_name text,
email text,
phone text
);

create table activities (
activity_id INTEGER PRIMARY KEY AUTOINCREMENT,
contact_id INTEGER,
date text,
time text,
activity_type text,
notes text
);