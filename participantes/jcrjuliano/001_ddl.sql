DROP TABLE IF EXISTS TB_TRANSACTIONS CASCADE;
DROP TABLE IF EXISTS TB_CLIENTES CASCADE;

CREATE TABLE TB_CLIENTES (
	id bigserial NOT NULL,
	name VARCHAR(50) NOT NULL,
	limite INT8 NULL,
	saldo INT8 NULL DEFAULT 0,
	transactions text[] DEFAULT '{}',
	CONSTRAINT CLIENTE_PKEY PRIMARY KEY (id),
	CHECK (saldo >= -limite)
);