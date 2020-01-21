BEGIN TRANSACTION;

INSERT into users (name, email, entries, joined) values ('admin', 'admin@gmail.com', 5, '2018-01-01');

INSERT into login (hash, email) values ('$2y$12$f26yuBkmDLksOih9QgyJ3eNE/SzEk7W6MCHAX4Fvv4mk8BNWQuZMW','admin@gmail.com');

COMMIT;