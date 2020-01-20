-- Deploy fresh database tables

\i '/docker-entrypoint-initdb.d/tables/user.sql'
\i '/docker-entrypoint-initdb.d/tables/login.sql'