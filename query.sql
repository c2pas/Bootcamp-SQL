CREATE TABLE IF NOT EXISTS public.biddings
(
    id integer NOT NULL,
    product_id integer,
    user_id integer,
    bid "char",
    created_at timestamp with time zone,
    CONSTRAINT biddings_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.products
(
    id integer NOT NULL,
    name "char",
    size "char",
    details "char",
    price bigint,
    created_at timestamp with time zone,
    CONSTRAINT products_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.users
(
    id integer NOT NULL,
    first_name "char" NOT NULL,
    last_name "char" NOT NULL,
    email "char" NOT NULL,
    address "char",
    password character varying COLLATE pg_catalog."default",
    created_at timestamp with time zone,
    CONSTRAINT users_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.product_status
(
    id integer NOT NULL,
    status character varying COLLATE pg_catalog."default",
    created_at timestamp with time zone,
    created_by "char",
    CONSTRAINT product_status_pkey PRIMARY KEY (id)
);
