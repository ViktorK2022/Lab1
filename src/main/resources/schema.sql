DROP TABLE IF EXISTS product CASCADE;
DROP SEQUENCE IF EXISTS global_seq;

CREATE SEQUENCE global_seq START WITH 1;



create table product
(
    id       integer PRIMARY KEY DEFAULT nextval('global_seq'),
    shop     VARCHAR NOT NULL,
    brand    VARCHAR NOT NULL,
    model    VARCHAR NOT NULL,
    price    INTEGER NOT NULL,
    quantity INTEGER NOT NULL
);