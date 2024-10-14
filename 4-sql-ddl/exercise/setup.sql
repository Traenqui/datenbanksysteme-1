\echo \conninfo
\echo

SET client_min_messages = ERROR;
\set user flugadmin
\set password '\'flug\''
\set database flugverwaltung

DROP DATABASE IF EXISTS :database (FORCE);
DROP ROLE if exists :user;

\echo -------------------------------------
\echo password for user :user = :password
\echo -------------------------------------
\echo

CREATE ROLE :user WITH LOGIN PASSWORD :password;
CREATE DATABASE :database WITH OWNER=:user ENCODING='UTF8';


-- specify encoding to match your files encoding, usually UTF8
-- valid values are: 'UTF8', 'LATIN1', 'WIN1252'
\encoding 'UTF8'

-- connect to DB as superuser
\c -reuse-previous=on :database :user

-- run the schema file to create the tables
\ir schema.sql

-- insert demo data
\ir insert_demo_data.sql
