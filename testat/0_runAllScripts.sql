\echo \conninfo
\echo

SET client_min_messages = ERROR;
\set user emsadmin
\set password '\'admin\''
\set database ems

DROP DATABASE IF EXISTS :database (FORCE);
DROP ROLE if exists :user;

\echo -------------------------------------
\echo password for user :user = :password
\echo -------------------------------------
\echo

CREATE ROLE :user WITH LOGIN PASSWORD :password;
CREATE DATABASE :database WITH OWNER=:user ENCODING='UTF8';

\encoding 'UTF8'

-- connect to DB as superuser
\c -reuse-previous=on :database :user

-- create schema
\ir 2_schema.sql

-- insert data in slo-mo or use COPY for speedup
\ir 3_inserts.sql

-- create primary keys, constraints, indexes
\ir 4_constraints.sql

\echo All scripts executed successfully!
