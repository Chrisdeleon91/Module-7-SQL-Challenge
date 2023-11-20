DROP TABLE IF EXISTS transaction_table;
DROP TABLE IF EXISTS credit_card;
DROP TABLE IF EXISTS card_holder;
DROP TABLE IF EXISTS merchant;
DROP TABLE IF EXISTS merchant_category;

CREATE TABLE transaction_table (
  id integer NOT NULL,
  date timestamp without time zone DEFAULT now() NOT NULL,
  amount float NOT NULL,
  card varchar(20) NOT NULL,
  id_merchant integer NOT NULL
);

CREATE TABLE credit_card (
  card varchar(20) NOT NULL,
  cardholder_id int NOT NULL
);

CREATE TABLE card_holder (
  id int NOT NULL,
  name varchar(20) NOT NULL
);

CREATE TABLE merchant (
  id integer NOT NULL,
  name character varying(40) NOT NULL,
  id_merchant_category integer NOT NULL
);

CREATE TABLE merchant_category (
  id integer NOT NULL,
  name character varying(40) NOT NULL
);