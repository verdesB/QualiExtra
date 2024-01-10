--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.service_has_package DROP CONSTRAINT service_has_package_service_id_fkey;
ALTER TABLE ONLY public.service_has_package DROP CONSTRAINT service_has_package_package_id_fkey;
ALTER TABLE ONLY public.service_has_category DROP CONSTRAINT service_has_category_service_id_fkey;
ALTER TABLE ONLY public.service_has_category DROP CONSTRAINT service_has_category_category_id_fkey;
ALTER TABLE ONLY public.purchase_has_package DROP CONSTRAINT purchase_has_package_purchase_id_fkey;
ALTER TABLE ONLY public.purchase_has_package DROP CONSTRAINT purchase_has_package_package_id_fkey;
ALTER TABLE ONLY public.package_has_style DROP CONSTRAINT package_has_style_style_id_fkey;
ALTER TABLE ONLY public.package_has_style DROP CONSTRAINT package_has_style_package_id_fkey;
ALTER TABLE ONLY public.institution_has_style DROP CONSTRAINT institution_has_style_style_id_fkey;
ALTER TABLE ONLY public.institution_has_style DROP CONSTRAINT institution_has_style_institution_id_fkey;
ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_service_id_fkey";
ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_institution_id_fkey";
ALTER TABLE ONLY public."Purchases" DROP CONSTRAINT "Purchases_user_id_fkey";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_user_id_fkey";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_institution_id_fkey";
ALTER TABLE ONLY public.service_has_package DROP CONSTRAINT service_has_package_pkey;
ALTER TABLE ONLY public.service_has_category DROP CONSTRAINT service_has_category_pkey;
ALTER TABLE ONLY public.purchase_has_package DROP CONSTRAINT purchase_has_package_pkey;
ALTER TABLE ONLY public.package_has_style DROP CONSTRAINT package_has_style_pkey;
ALTER TABLE ONLY public.institution_has_style DROP CONSTRAINT institution_has_style_pkey;
ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key5";
ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key4";
ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key3";
ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key2";
ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key1";
ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key";
ALTER TABLE ONLY public."Styles" DROP CONSTRAINT "Styles_pkey";
ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_pkey";
ALTER TABLE ONLY public."Purchases" DROP CONSTRAINT "Purchases_pkey";
ALTER TABLE ONLY public."Packages" DROP CONSTRAINT "Packages_pkey";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_pkey";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key9";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key8";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key79";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key78";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key77";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key76";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key75";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key74";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key73";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key72";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key71";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key70";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key7";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key69";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key68";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key67";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key66";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key65";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key64";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key63";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key62";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key61";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key60";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key6";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key59";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key58";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key57";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key56";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key55";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key54";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key53";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key52";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key51";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key50";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key5";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key49";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key48";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key47";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key46";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key45";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key44";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key43";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key42";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key41";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key40";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key4";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key39";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key38";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key37";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key36";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key35";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key34";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key33";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key32";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key31";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key30";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key3";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key29";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key28";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key27";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key26";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key25";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key24";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key23";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key22";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key21";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key20";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key2";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key19";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key18";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key17";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key16";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key15";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key14";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key13";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key12";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key11";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key10";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key1";
ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key";
ALTER TABLE ONLY public."Images" DROP CONSTRAINT "Images_pkey";
ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_pkey";
ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Styles" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Services" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Purchases" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Packages" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Institutions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Images" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Categories" ALTER COLUMN id DROP DEFAULT;
DROP TABLE public.service_has_package;
DROP TABLE public.service_has_category;
DROP TABLE public.purchase_has_package;
DROP TABLE public.package_has_style;
DROP TABLE public.institution_has_style;
DROP SEQUENCE public."Users_id_seq";
DROP TABLE public."Users";
DROP SEQUENCE public."Styles_id_seq";
DROP TABLE public."Styles";
DROP SEQUENCE public."Services_id_seq";
DROP TABLE public."Services";
DROP SEQUENCE public."Purchases_id_seq";
DROP TABLE public."Purchases";
DROP SEQUENCE public."Packages_id_seq";
DROP TABLE public."Packages";
DROP SEQUENCE public."Institutions_id_seq";
DROP TABLE public."Institutions";
DROP SEQUENCE public."Images_id_seq";
DROP TABLE public."Images";
DROP SEQUENCE public."Categories_id_seq";
DROP TABLE public."Categories";
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Categories; Type: TABLE; Schema: public; Owner: qualiextra
--

CREATE TABLE public."Categories" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name_catg character varying(255) NOT NULL,
    description_catg character varying(255) NOT NULL
);


ALTER TABLE public."Categories" OWNER TO qualiextra;

--
-- Name: Categories_id_seq; Type: SEQUENCE; Schema: public; Owner: qualiextra
--

CREATE SEQUENCE public."Categories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Categories_id_seq" OWNER TO qualiextra;

--
-- Name: Categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qualiextra
--

ALTER SEQUENCE public."Categories_id_seq" OWNED BY public."Categories".id;


--
-- Name: Images; Type: TABLE; Schema: public; Owner: qualiextra
--

CREATE TABLE public."Images" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Images" OWNER TO qualiextra;

--
-- Name: Images_id_seq; Type: SEQUENCE; Schema: public; Owner: qualiextra
--

CREATE SEQUENCE public."Images_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Images_id_seq" OWNER TO qualiextra;

--
-- Name: Images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qualiextra
--

ALTER SEQUENCE public."Images_id_seq" OWNED BY public."Images".id;


--
-- Name: Institutions; Type: TABLE; Schema: public; Owner: qualiextra
--

CREATE TABLE public."Institutions" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name_ins character varying(255) NOT NULL,
    cover character varying(255),
    email_ins character varying(255) NOT NULL,
    adress_ins character varying(255),
    city_ins character varying(255),
    cp_ins integer,
    phone_ins integer NOT NULL,
    average_price integer,
    experiences character varying(255),
    institution_id integer,
    user_id integer NOT NULL
);


ALTER TABLE public."Institutions" OWNER TO qualiextra;

--
-- Name: Institutions_id_seq; Type: SEQUENCE; Schema: public; Owner: qualiextra
--

CREATE SEQUENCE public."Institutions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Institutions_id_seq" OWNER TO qualiextra;

--
-- Name: Institutions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qualiextra
--

ALTER SEQUENCE public."Institutions_id_seq" OWNED BY public."Institutions".id;


--
-- Name: Packages; Type: TABLE; Schema: public; Owner: qualiextra
--

CREATE TABLE public."Packages" (
    id integer NOT NULL,
    price integer NOT NULL,
    quantity integer NOT NULL,
    available boolean NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    date_start date NOT NULL,
    date_end date NOT NULL,
    name_pkg character varying(255) NOT NULL,
    capacity integer NOT NULL
);


ALTER TABLE public."Packages" OWNER TO qualiextra;

--
-- Name: Packages_id_seq; Type: SEQUENCE; Schema: public; Owner: qualiextra
--

CREATE SEQUENCE public."Packages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Packages_id_seq" OWNER TO qualiextra;

--
-- Name: Packages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qualiextra
--

ALTER SEQUENCE public."Packages_id_seq" OWNED BY public."Packages".id;


--
-- Name: Purchases; Type: TABLE; Schema: public; Owner: qualiextra
--

CREATE TABLE public."Purchases" (
    id integer NOT NULL,
    quantity integer,
    price integer,
    date_start date NOT NULL,
    date_end date NOT NULL,
    hour_start character varying(255),
    hour_end character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    user_id integer
);


ALTER TABLE public."Purchases" OWNER TO qualiextra;

--
-- Name: Purchases_id_seq; Type: SEQUENCE; Schema: public; Owner: qualiextra
--

CREATE SEQUENCE public."Purchases_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Purchases_id_seq" OWNER TO qualiextra;

--
-- Name: Purchases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qualiextra
--

ALTER SEQUENCE public."Purchases_id_seq" OWNED BY public."Purchases".id;


--
-- Name: Services; Type: TABLE; Schema: public; Owner: qualiextra
--

CREATE TABLE public."Services" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name_serv character varying(255) NOT NULL,
    description_serv character varying(1000) NOT NULL,
    hour_start character varying(255) NOT NULL,
    hour_end character varying(255) NOT NULL,
    service_id integer,
    institution_id integer,
    cover_serv character varying(255) NOT NULL
);


ALTER TABLE public."Services" OWNER TO qualiextra;

--
-- Name: Services_id_seq; Type: SEQUENCE; Schema: public; Owner: qualiextra
--

CREATE SEQUENCE public."Services_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Services_id_seq" OWNER TO qualiextra;

--
-- Name: Services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qualiextra
--

ALTER SEQUENCE public."Services_id_seq" OWNED BY public."Services".id;


--
-- Name: Styles; Type: TABLE; Schema: public; Owner: qualiextra
--

CREATE TABLE public."Styles" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name_style character varying(255) NOT NULL
);


ALTER TABLE public."Styles" OWNER TO qualiextra;

--
-- Name: Styles_id_seq; Type: SEQUENCE; Schema: public; Owner: qualiextra
--

CREATE SEQUENCE public."Styles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Styles_id_seq" OWNER TO qualiextra;

--
-- Name: Styles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qualiextra
--

ALTER SEQUENCE public."Styles_id_seq" OWNED BY public."Styles".id;


--
-- Name: Users; Type: TABLE; Schema: public; Owner: qualiextra
--

CREATE TABLE public."Users" (
    id integer NOT NULL,
    role character varying(255) DEFAULT 'user'::character varying,
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    birthday timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    adress_user character varying(255),
    city_user character varying(255),
    cp_user character varying(255),
    phone_user character varying(255),
    image_profil character varying(255),
    validation_token character varying(255)
);


ALTER TABLE public."Users" OWNER TO qualiextra;

--
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: qualiextra
--

CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Users_id_seq" OWNER TO qualiextra;

--
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qualiextra
--

ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;


--
-- Name: institution_has_style; Type: TABLE; Schema: public; Owner: qualiextra
--

CREATE TABLE public.institution_has_style (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    style_id integer NOT NULL,
    institution_id integer NOT NULL
);


ALTER TABLE public.institution_has_style OWNER TO qualiextra;

--
-- Name: package_has_style; Type: TABLE; Schema: public; Owner: qualiextra
--

CREATE TABLE public.package_has_style (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    package_id integer NOT NULL,
    style_id integer NOT NULL
);


ALTER TABLE public.package_has_style OWNER TO qualiextra;

--
-- Name: purchase_has_package; Type: TABLE; Schema: public; Owner: qualiextra
--

CREATE TABLE public.purchase_has_package (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    package_id integer NOT NULL,
    purchase_id integer NOT NULL
);


ALTER TABLE public.purchase_has_package OWNER TO qualiextra;

--
-- Name: service_has_category; Type: TABLE; Schema: public; Owner: qualiextra
--

CREATE TABLE public.service_has_category (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    service_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.service_has_category OWNER TO qualiextra;

--
-- Name: service_has_package; Type: TABLE; Schema: public; Owner: qualiextra
--

CREATE TABLE public.service_has_package (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    service_id integer NOT NULL,
    package_id integer NOT NULL
);


ALTER TABLE public.service_has_package OWNER TO qualiextra;

--
-- Name: Categories id; Type: DEFAULT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Categories" ALTER COLUMN id SET DEFAULT nextval('public."Categories_id_seq"'::regclass);


--
-- Name: Images id; Type: DEFAULT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Images" ALTER COLUMN id SET DEFAULT nextval('public."Images_id_seq"'::regclass);


--
-- Name: Institutions id; Type: DEFAULT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions" ALTER COLUMN id SET DEFAULT nextval('public."Institutions_id_seq"'::regclass);


--
-- Name: Packages id; Type: DEFAULT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Packages" ALTER COLUMN id SET DEFAULT nextval('public."Packages_id_seq"'::regclass);


--
-- Name: Purchases id; Type: DEFAULT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Purchases" ALTER COLUMN id SET DEFAULT nextval('public."Purchases_id_seq"'::regclass);


--
-- Name: Services id; Type: DEFAULT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Services" ALTER COLUMN id SET DEFAULT nextval('public."Services_id_seq"'::regclass);


--
-- Name: Styles id; Type: DEFAULT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Styles" ALTER COLUMN id SET DEFAULT nextval('public."Styles_id_seq"'::regclass);


--
-- Name: Users id; Type: DEFAULT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);


--
-- Data for Name: Categories; Type: TABLE DATA; Schema: public; Owner: qualiextra
--

COPY public."Categories" (id, "createdAt", "updatedAt", name_catg, description_catg) FROM stdin;
\.


--
-- Data for Name: Images; Type: TABLE DATA; Schema: public; Owner: qualiextra
--

COPY public."Images" (id, name, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Institutions; Type: TABLE DATA; Schema: public; Owner: qualiextra
--

COPY public."Institutions" (id, "createdAt", "updatedAt", name_ins, cover, email_ins, adress_ins, city_ins, cp_ins, phone_ins, average_price, experiences, institution_id, user_id) FROM stdin;
44	2023-10-28 10:01:35.872+02	2023-10-28 10:01:35.872+02	Le Bistro Parisien	https://drive.google.com/uc?export=view&id=1bCYBKU88r2DsKQXj5DqOpcBupkgpM6iC	lebistroparisien@fictif.fr	12 Rue de la Paix	Paris	75002	33	50	Dégustation de vins, cours de cuisine française	\N	57
45	2023-10-28 10:11:23.064+02	2023-10-28 10:11:23.064+02	La Maison Provençale	https://drive.google.com/uc?export=view&id=1C2q-xOSgVvMJB67kjgGOJqD8lcOi0cxd	maisonprovencal@fictif.fr	34 Avenue Mirabeau	Aix-en-Provence	13100	33	60	Atelier de peinture, visite de vignobles	\N	57
46	2023-10-28 10:27:33.088+02	2023-10-28 10:27:33.088+02	L Atelier Bordelais	https://drive.google.com/uc?export=view&id=1dpreOP5mFu4GuwYeYvKKzzzybB9ZE1qR	atelierbordelais@fictif.fr	56 Cours du Médoc	Bordeaux	33300	567891023	70	Dégustation de vins, visite de châteaux	\N	57
47	2023-10-28 10:34:58.528+02	2023-10-28 10:34:58.528+02	Le Refuge Savoyard	https://drive.google.com/uc?export=view&id=1OAXrGfGDKj4-AiFcY6qsmTndSTXqB5Eg	refugesavoyard@fictif.fr	78 Route des Alpes	Chamonix-Mont-Blanc	74400	456789012	80	Randonnée en montagne, cours de ski	\N	57
48	2023-10-28 10:39:48.18+02	2023-10-28 10:39:48.18+02	La Villa Côte d’Azur	https://drive.google.com/uc?export=view&id=19IoGs2awuUprTxw8MJpLYRJmjZCjEieX	villacotedazur@fictif.fr	90 Boulevard de la Croisette	Cannes	6400	493381957	100	Excursion en yacht, cours de plongée sous-marine	\N	57
49	2023-11-07 15:37:55.13+01	2023-11-07 15:37:55.13+01	vegas		vegas@example.fr	rue de la paix	Paris	75016	134568675	100	restaurant, concert	\N	62
\.


--
-- Data for Name: Packages; Type: TABLE DATA; Schema: public; Owner: qualiextra
--

COPY public."Packages" (id, price, quantity, available, "createdAt", "updatedAt", date_start, date_end, name_pkg, capacity) FROM stdin;
41	50	5	t	2023-10-30 10:06:45.518+01	2023-10-30 10:06:45.518+01	2023-10-31	2023-11-01	La Totale du Bistrot	2
46	60	2	t	2023-10-30 14:32:28.293+01	2023-10-30 14:32:28.293+01	2023-10-31	2023-11-01	Cours de ski	2
47	250	5	t	2023-10-31 09:25:17.672+01	2023-10-31 09:25:17.672+01	2023-11-02	2023-11-03	A vos tubas !	3
49	15	0	t	2023-10-31 10:45:12.899+01	2023-11-02 12:08:22.108+01	2023-11-04	2023-11-05	La Totale Provencale	2
45	200	4	t	2023-10-30 14:28:21.785+01	2023-11-03 17:05:07.55+01	2023-10-31	2023-11-01	La Totale Azur	2
42	40	19	t	2023-10-30 13:43:17.857+01	2023-11-05 13:14:15.691+01	2023-10-31	2023-11-01	La Totale Provencale	2
50	200	99	t	2023-11-07 15:39:28.151+01	2023-11-07 15:41:29.346+01	2023-11-15	2023-11-20	diner romantique musicale	2
\.


--
-- Data for Name: Purchases; Type: TABLE DATA; Schema: public; Owner: qualiextra
--

COPY public."Purchases" (id, quantity, price, date_start, date_end, hour_start, hour_end, "createdAt", "updatedAt", user_id) FROM stdin;
1	10	150	2023-11-04	2023-11-05	\N	\N	2023-11-02 09:50:32.747+01	2023-11-02 09:50:32.747+01	59
2	2	30	2023-11-04	2023-11-05	\N	\N	2023-11-02 10:11:17.12+01	2023-11-02 10:11:17.12+01	59
3	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:05:31.155+01	2023-11-02 11:05:31.155+01	59
4	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:05:52.988+01	2023-11-02 11:05:52.988+01	59
5	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:09:08.368+01	2023-11-02 11:09:08.368+01	59
6	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:10:45.416+01	2023-11-02 11:10:45.416+01	59
7	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:11:28.131+01	2023-11-02 11:11:28.131+01	59
8	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:12:06.951+01	2023-11-02 11:12:06.951+01	59
9	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:13:16.211+01	2023-11-02 11:13:16.211+01	59
10	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:13:27.738+01	2023-11-02 11:13:27.738+01	59
11	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:16:00.666+01	2023-11-02 11:16:00.666+01	59
12	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:20:52.407+01	2023-11-02 11:20:52.407+01	59
13	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:22:24.76+01	2023-11-02 11:22:24.76+01	59
14	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:22:32.941+01	2023-11-02 11:22:32.941+01	59
15	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:30:49.549+01	2023-11-02 11:30:49.549+01	59
16	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:31:50.665+01	2023-11-02 11:31:50.665+01	59
17	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:31:52.593+01	2023-11-02 11:31:52.593+01	59
18	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:32:40.279+01	2023-11-02 11:32:40.279+01	59
19	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:34:02.28+01	2023-11-02 11:34:02.28+01	59
20	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:34:08.184+01	2023-11-02 11:34:08.184+01	59
21	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:35:21.076+01	2023-11-02 11:35:21.076+01	59
22	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:36:13.512+01	2023-11-02 11:36:13.512+01	59
23	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:41:22.306+01	2023-11-02 11:41:22.306+01	59
24	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:45:48.326+01	2023-11-02 11:45:48.326+01	59
25	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:46:49.483+01	2023-11-02 11:46:49.483+01	59
26	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 11:47:55.737+01	2023-11-02 11:47:55.737+01	59
27	1	15	2023-11-04	2023-11-05	\N	\N	2023-11-02 12:04:47.742+01	2023-11-02 12:04:47.742+01	59
28	2	30	2023-11-04	2023-11-05	\N	\N	2023-11-02 12:06:23.377+01	2023-11-02 12:06:23.377+01	59
29	6	90	2023-11-04	2023-11-05	\N	\N	2023-11-02 12:08:22.057+01	2023-11-02 12:08:22.057+01	59
30	2	100	2023-11-02	2023-11-03	\N	\N	2023-11-02 13:55:14.565+01	2023-11-02 13:55:14.565+01	59
31	1	200	2023-10-31	2023-11-01	\N	\N	2023-11-03 17:05:07.461+01	2023-11-03 17:05:07.461+01	59
32	1	40	2023-10-31	2023-11-01	\N	\N	2023-11-05 13:14:15.615+01	2023-11-05 13:14:15.615+01	59
33	1	200	2023-11-15	2023-11-15	\N	\N	2023-11-07 15:41:29.2+01	2023-11-07 15:41:29.2+01	59
\.


--
-- Data for Name: Services; Type: TABLE DATA; Schema: public; Owner: qualiextra
--

COPY public."Services" (id, "createdAt", "updatedAt", name_serv, description_serv, hour_start, hour_end, service_id, institution_id, cover_serv) FROM stdin;
106	2023-10-28 11:41:30.443+02	2023-10-28 11:41:30.443+02	Dégustation de vins	Le bistro parisien vous invite à découvrir les richesses du terroir français à travers une dégustation de vins accompagnée de plats savoureux. Dans une ambiance conviviale et chaleureuse, vous pourrez apprécier une sélection de vins de qualité, choisis par notre sommelier passionné. Que vous soyez novice ou connaisseur, vous apprendrez à reconnaître les arômes, les couleurs et les saveurs des différents cépages et régions viticoles. Vous dégusterez également des fromages, des charcuteries et des spécialités locales qui sublimeront votre palais. Le bistro parisien vous offre une expérience gustative unique et authentique, à partager entre amis ou en famille. Réservez vite votre place et venez vivre un moment inoubliable au cœur de Paris !	15:00	19:00	\N	44	https://drive.google.com/uc?export=view&id=1mdFwPDeLQZw9xPEPwib5f31PeU5KTkWk
107	2023-10-28 11:42:27.188+02	2023-10-28 11:42:27.188+02	Cours de cuisine française	Un cours de cuisine française au bistro parisien est une activité ludique et gourmande qui vous permettra de découvrir les secrets de la gastronomie française. Vous apprendrez à réaliser des plats typiques de la bistronomie, comme le soufflé au comté et aux morilles, le sauté minute de veau sauce Robert, ou le feuilleté framboise crème diplomate. Vous serez accompagné par un chef professionnel et passionné, qui vous transmettra son savoir-faire et ses astuces. Vous pourrez ensuite déguster vos créations dans une ambiance conviviale, avec un verre de vin et une vue sur l’Opéra. Que vous soyez débutant ou confirmé, ce cours de cuisine française au bistro parisien est une expérience à ne pas manquer !	19:00	23:00	\N	44	https://drive.google.com/uc?export=view&id=1CXQ3L0okhOqAIJ8zxyLw81cRL-143BPy
108	2023-10-28 11:50:22.513+02	2023-10-28 11:50:22.513+02	Atelier de peinture	Si vous aimez la peinture et la Provence, cet atelier est fait pour vous ! Vous serez accueilli dans une authentique maison provençale en pierre naturelle, située au cœur du village de Gigondas. Vous découvrirez les techniques et les secrets de la peinture provençale, inspirée par les paysages, les couleurs et la lumière de cette région. Vous apprendrez à réaliser des tableaux de qualité, avec des matériaux nobles et durables. Vous serez guidé par un artiste professionnel et passionné, qui vous transmettra son savoir-faire et ses astuces. Vous pourrez ensuite admirer vos œuvres dans l’atelier voûté de 60 m2, ou sur le balcon avec une vue sur les Dentelles. Que vous soyez débutant ou confirmé, cet atelier de peinture de l’établissement La maison provençale est une expérience enrichissante et conviviale !	10:00	15:00	\N	45	https://drive.google.com/uc?export=view&id=1dx7kpN98-bSq7hY21tTFYD4cPviKLolu
109	2023-10-28 11:59:59.492+02	2023-10-28 11:59:59.492+02	Visite de vignobles	Venez découvrir le charme et la richesse du vignoble provençal lors d’une visite guidée de l’établissement “La Maison Provençale”. Vous pourrez admirer les paysages typiques de la région, les vignes ensoleillées et les oliviers centenaires. Vous visiterez la cave où sont élaborés les vins de l’appellation Côtes de Provence, et vous apprendrez les secrets de la vinification et de l’élevage. Vous dégusterez ensuite quatre vins différents, accompagnés de produits du terroir, dans une ambiance conviviale et chaleureuse. Vous repartirez avec des souvenirs inoubliables et le goût du sud dans votre verre.	15:00	19:00	\N	45	https://drive.google.com/uc?export=view&id=1vdWtV9iam_EWzj-sxIlfpQ3tZ0wPfENW
110	2023-10-28 12:07:19.247+02	2023-10-28 12:07:19.247+02	Dégustation de vins	Si vous êtes un amateur de vin et d’histoire, ne manquez pas l’occasion de visiter un château viticole dans la région de Bordeaux. Vous serez accueilli par le propriétaire ou le maître de chai, qui vous fera découvrir les secrets de la production d’un grand cru classé. Vous parcourrez les vignes, le cuvier et le chai à barriques, et vous apprendrez les étapes de la vinification et de l’élevage. Vous terminerez la visite par une dégustation commentée de plusieurs vins du domaine, accompagnés de fromages et de charcuterie. Vous pourrez ainsi apprécier la diversité et la qualité des cépages bordelais, et vous initier à l’art de la dégustation. Une expérience enrichissante et savoureuse, à partager entre amis ou en famille.	19:00	22:00	\N	46	https://drive.google.com/uc?export=view&id=1HzYuVgH-xL83oyq2JQpzIwYMjwOJXFP3
111	2023-10-28 12:11:55.209+02	2023-10-28 12:11:55.209+02	Visite du chateau	Si vous aimez le vin, le patrimoine et les paysages, cette expérience est faite pour vous ! L’atelier bordelais vous propose de découvrir les secrets des vins de Bordeaux à travers des visites de châteaux prestigieux ou authentiques. Vous pourrez visiter les vignes, les chais, les caves et déguster des vins blancs, rouges ou liquoreux selon vos envies. Vous pourrez également participer à des ateliers de dégustation, d’assemblage ou d’éveil des sens, animés par des œnologues passionnés. Que vous soyez novice ou expert, vous trouverez l’atelier qui vous convient parmi les différentes formules proposées. Vous vivrez un moment unique et enrichissant autour du vin 	13:00	18:00	\N	46	https://drive.google.com/uc?export=view&id=1NEOYlYc7H7GqFPB5nMYslM_ZeNwcq54-
112	2023-10-28 12:20:59.839+02	2023-10-28 12:20:59.839+02	Randonnée en montagne	Randonnée en montagne par l’établissement le refuge savoyard\n\nPartez à la découverte des merveilles de la montagne avec le refuge savoyard, un gîte chaleureux et accueillant, situé dans le massif des Aravis, près de La Clusaz. Le refuge savoyard vous propose des randonnées adaptées à tous les niveaux, avec des guides compétents et enthousiastes. Vous pourrez admirer la diversité de la faune et de la flore, les sommets enneigés, les alpages fleuris et les forêts de conifères. Vous pourrez aussi faire une pause au lac de Tardevant, un lac d’altitude rare dans les Aravis, et profiter d’une vue splendide sur le refuge de la Bombardellaz. Le soir, vous apprécierez le confort du refuge savoyard, où vous pourrez savourer des plats typiques (fondue, tartiflette, crozets…), échanger avec les autres randonneurs et dormir sous les étoiles. Le refuge savoyard vous invite à une randonnée en montagne authentique et vivifiante 	08:00	12:00	\N	47	https://drive.google.com/uc?export=view&id=1yWjRCt2xi2093Dm51kZrgr8q8Pfz4Gbo
113	2023-10-28 12:28:28.306+02	2023-10-28 12:28:28.306+02	Cours de ski	CCours de ski par le refuge savoyard\n\nEnvie de glisser sur les pistes enneigées, de progresser à votre rythme et de profiter d’un cadre exceptionnel ? Le refuge savoyard vous propose des cours de ski personnalisés, encadrés par des moniteurs diplômés et sympathiques.Venez skier avec le refuge savoyard, un chalet 4 étoiles au cœur du domaine San Bernardo. Vous aurez des cours de ski personnalisés, avec des moniteurs diplômés et sympathiques. Vous pourrez aussi profiter des pistes variées, des activités annexes et du confort du chalet. Le refuge savoyard vous promet une expérience de ski inoubliable !	13:00	16:00	\N	47	https://drive.google.com/uc?export=view&id=1nli7-nnfQnesTztPjyEH204rvK-OoKO1
114	2023-10-28 12:35:14.321+02	2023-10-28 12:35:14.321+02	Excursion en yacht	Excursion en yacht par la villa côte d’azur\n\nEmbarquez sur un yacht de luxe, loué par la villa côte d’azur, une villa de charme à Nice. Vous naviguerez sur la mer turquoise, en admirant les plages, les îles, les falaises et les villages de la Côte d’Azur. Vous pourrez faire des escales dans des lieux mythiques, comme Cannes, Monaco, Saint-Tropez ou les îles de Lérins. Vous pourrez aussi vous amuser avec des activités nautiques, comme le ski nautique, le jet ski, la plongée ou le paddle. À bord du yacht, vous profiterez d’un service haut de gamme, avec un chef étoilé, un équipage discret et un jacuzzi. Vous vivrez une expérience unique et inoubliable, en toute intimité et en toute sécurité. L’excursion en yacht par la villa côte d’azur est une opportunité à ne pas manquer pour découvrir la Côte d’Azur autrement.	10:00	15:00	\N	48	https://drive.google.com/uc?export=view&id=1jk8g6_1iUn8ozm8NcSkho_NvqlsasLVi
115	2023-10-28 12:50:33.479+02	2023-10-28 12:50:33.479+02	Cours de plongée sous-marine	Cours de plongée sous-marine par la villa côte d’azur\n\nVenez vivre une aventure sous-marine avec la villa côte d’azur, une villa de rêve située à Cannes. La villa côte d’azur vous propose des plongées sous-marines, avec des instructeurs expérimentés et amicaux. Vous pourrez choisir votre niveau, votre durée et votre destination de plongée, selon vos envies et votre budget. Vous plongerez dans les eaux cristallines de la Méditerranée, en découvrant les richesses du monde marin. Vous pourrez admirer les poissons multicolores, les coraux, les étoiles de mer et les dauphins.	15:00	19:00	\N	48	https://drive.google.com/uc?export=view&id=1WlZ1kebbQA8RDKfPnIIOBpSxJ2_7iNmD
116	2023-11-07 15:38:35.162+01	2023-11-07 15:38:35.162+01	diner pour deux avec concert	concert de musique classic	20:00	00:00	\N	49	
\.


--
-- Data for Name: Styles; Type: TABLE DATA; Schema: public; Owner: qualiextra
--

COPY public."Styles" (id, "createdAt", "updatedAt", name_style) FROM stdin;
\.


--
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: qualiextra
--

COPY public."Users" (id, role, firstname, lastname, password, email, birthday, "createdAt", "updatedAt", adress_user, city_user, cp_user, phone_user, image_profil, validation_token) FROM stdin;
55	user	baratheon	Robert 	$2b$10$9Lp9LWUbLhmqOoG2z2jQxedDcDnvAmmmIh3d4QHlMX3n1GQeShpjK	robert.baratheon@gmail.com	\N	2023-10-20 16:22:22.69+02	2023-10-20 16:22:22.69+02	\N	\N	\N	102030405	\N	\N
56	admin	jack	sparrow	$2b$10$cNppUx72zmj3D4kW/QYfIuEoe52jB5EnlSKjd133RP6WRNjwuTyae	admin@blackpearl.com	\N	2023-10-20 16:23:33.563+02	2023-10-20 16:23:33.563+02	\N	\N	\N	\N	\N	\N
57	provider	little	finger	$2b$10$/6oDkU2la9T77BOxW4PbN.k9AM53auie2plJOh8trZGmvttdW5EGi	littlefinger@gmail.com	\N	2023-10-20 16:25:43.443+02	2023-10-20 16:25:43.443+02	\N	\N	\N	102030405	\N	\N
58	user			$2b$10$uCITu6CHLoVbVRR0yTmJ/eHiz4IycjjqV8QWIDzxc.9bEoDNbTbq.		\N	2023-10-29 01:25:07.731+02	2023-10-29 01:25:07.731+02	\N	\N	\N	NaN	\N	\N
59	user	aria	stark	$2b$10$25Tp1u3365jORO6r5i1frez4sh7Tlx72KqPskVFlJ4Zq9TcbwgnBC	a.stark@gmail.com	\N	2023-10-31 15:09:10.104+01	2023-10-31 15:09:10.104+01	\N	\N	\N	12325658	\N	\N
60	provider	Snow	John	$2b$10$HYBHHpD9AK.yl16k/sTrpuMc8kiZDEkfefXZ5vi7GqUmAMTFCgL6u	j.snow@example.fr	\N	2023-11-05 13:16:48.515+01	2023-11-05 13:16:48.515+01	\N	\N	\N	123547698	\N	\N
62	provider	segara	helene	$2b$10$CoYh.Eu/2EchDQ1n/jO6wueyuufk2G3ZSqrBjBH.RiinjHL5uWNTm	h.segara@gmail.com	\N	2023-11-07 15:35:55.452+01	2023-11-07 15:35:55.452+01	\N	\N	\N	654321287	\N	\N
\.


--
-- Data for Name: institution_has_style; Type: TABLE DATA; Schema: public; Owner: qualiextra
--

COPY public.institution_has_style ("createdAt", "updatedAt", style_id, institution_id) FROM stdin;
\.


--
-- Data for Name: package_has_style; Type: TABLE DATA; Schema: public; Owner: qualiextra
--

COPY public.package_has_style ("createdAt", "updatedAt", package_id, style_id) FROM stdin;
\.


--
-- Data for Name: purchase_has_package; Type: TABLE DATA; Schema: public; Owner: qualiextra
--

COPY public.purchase_has_package ("createdAt", "updatedAt", package_id, purchase_id) FROM stdin;
2023-11-02 09:50:32.823+01	2023-11-02 09:50:32.823+01	49	1
2023-11-02 10:11:17.163+01	2023-11-02 10:11:17.163+01	49	2
2023-11-02 11:05:31.215+01	2023-11-02 11:05:31.215+01	49	3
2023-11-02 11:05:53.038+01	2023-11-02 11:05:53.038+01	49	4
2023-11-02 11:09:08.418+01	2023-11-02 11:09:08.418+01	49	5
2023-11-02 11:10:45.516+01	2023-11-02 11:10:45.516+01	49	6
2023-11-02 11:11:28.205+01	2023-11-02 11:11:28.205+01	49	7
2023-11-02 11:12:07.031+01	2023-11-02 11:12:07.031+01	49	8
2023-11-02 11:13:16.28+01	2023-11-02 11:13:16.28+01	49	9
2023-11-02 11:13:27.794+01	2023-11-02 11:13:27.794+01	49	10
2023-11-02 11:16:00.764+01	2023-11-02 11:16:00.764+01	49	11
2023-11-02 11:20:52.461+01	2023-11-02 11:20:52.461+01	49	12
2023-11-02 11:22:24.807+01	2023-11-02 11:22:24.807+01	49	13
2023-11-02 11:22:32.988+01	2023-11-02 11:22:32.988+01	49	14
2023-11-02 11:30:49.633+01	2023-11-02 11:30:49.633+01	49	15
2023-11-02 11:31:50.715+01	2023-11-02 11:31:50.715+01	49	16
2023-11-02 11:31:52.634+01	2023-11-02 11:31:52.634+01	49	17
2023-11-02 11:32:40.339+01	2023-11-02 11:32:40.339+01	49	18
2023-11-02 11:34:02.341+01	2023-11-02 11:34:02.341+01	49	19
2023-11-02 11:34:08.267+01	2023-11-02 11:34:08.267+01	49	20
2023-11-02 11:35:21.17+01	2023-11-02 11:35:21.17+01	49	21
2023-11-02 11:36:13.557+01	2023-11-02 11:36:13.557+01	49	22
2023-11-02 11:41:22.369+01	2023-11-02 11:41:22.369+01	49	23
2023-11-02 11:45:48.442+01	2023-11-02 11:45:48.442+01	49	24
2023-11-02 11:46:49.551+01	2023-11-02 11:46:49.551+01	49	25
2023-11-02 11:47:55.816+01	2023-11-02 11:47:55.816+01	49	26
2023-11-02 12:04:47.79+01	2023-11-02 12:04:47.79+01	49	27
2023-11-02 12:06:23.408+01	2023-11-02 12:06:23.408+01	49	28
2023-11-02 12:08:22.084+01	2023-11-02 12:08:22.084+01	49	29
2023-11-03 17:05:07.521+01	2023-11-03 17:05:07.521+01	45	31
2023-11-05 13:14:15.662+01	2023-11-05 13:14:15.662+01	42	32
2023-11-07 15:41:29.302+01	2023-11-07 15:41:29.302+01	50	33
\.


--
-- Data for Name: service_has_category; Type: TABLE DATA; Schema: public; Owner: qualiextra
--

COPY public.service_has_category ("createdAt", "updatedAt", service_id, category_id) FROM stdin;
\.


--
-- Data for Name: service_has_package; Type: TABLE DATA; Schema: public; Owner: qualiextra
--

COPY public.service_has_package ("createdAt", "updatedAt", service_id, package_id) FROM stdin;
2023-10-30 10:06:45.538+01	2023-10-30 10:06:45.538+01	106	41
2023-10-30 10:06:45.54+01	2023-10-30 10:06:45.54+01	107	41
2023-10-30 13:43:17.885+01	2023-10-30 13:43:17.885+01	108	42
2023-10-30 13:43:17.888+01	2023-10-30 13:43:17.888+01	109	42
2023-10-30 14:28:21.808+01	2023-10-30 14:28:21.808+01	114	45
2023-10-30 14:28:21.809+01	2023-10-30 14:28:21.809+01	115	45
2023-10-30 14:32:28.315+01	2023-10-30 14:32:28.315+01	113	46
2023-10-31 09:25:17.695+01	2023-10-31 09:25:17.695+01	115	47
2023-10-31 10:45:12.924+01	2023-10-31 10:45:12.924+01	108	49
2023-11-07 15:39:28.236+01	2023-11-07 15:39:28.236+01	116	50
\.


--
-- Name: Categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qualiextra
--

SELECT pg_catalog.setval('public."Categories_id_seq"', 1, false);


--
-- Name: Images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qualiextra
--

SELECT pg_catalog.setval('public."Images_id_seq"', 1, false);


--
-- Name: Institutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qualiextra
--

SELECT pg_catalog.setval('public."Institutions_id_seq"', 49, true);


--
-- Name: Packages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qualiextra
--

SELECT pg_catalog.setval('public."Packages_id_seq"', 50, true);


--
-- Name: Purchases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qualiextra
--

SELECT pg_catalog.setval('public."Purchases_id_seq"', 33, true);


--
-- Name: Services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qualiextra
--

SELECT pg_catalog.setval('public."Services_id_seq"', 116, true);


--
-- Name: Styles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qualiextra
--

SELECT pg_catalog.setval('public."Styles_id_seq"', 1, false);


--
-- Name: Users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qualiextra
--

SELECT pg_catalog.setval('public."Users_id_seq"', 63, true);


--
-- Name: Categories Categories_pkey; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_pkey" PRIMARY KEY (id);


--
-- Name: Images Images_pkey; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Images"
    ADD CONSTRAINT "Images_pkey" PRIMARY KEY (id);


--
-- Name: Institutions Institutions_email_ins_key; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key1; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key1" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key10; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key10" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key11; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key11" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key12; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key12" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key13; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key13" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key14; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key14" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key15; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key15" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key16; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key16" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key17; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key17" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key18; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key18" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key19; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key19" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key2; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key2" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key20; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key20" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key21; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key21" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key22; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key22" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key23; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key23" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key24; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key24" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key25; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key25" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key26; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key26" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key27; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key27" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key28; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key28" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key29; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key29" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key3; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key3" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key30; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key30" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key31; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key31" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key32; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key32" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key33; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key33" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key34; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key34" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key35; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key35" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key36; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key36" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key37; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key37" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key38; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key38" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key39; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key39" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key4; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key4" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key40; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key40" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key41; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key41" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key42; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key42" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key43; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key43" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key44; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key44" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key45; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key45" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key46; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key46" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key47; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key47" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key48; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key48" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key49; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key49" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key5; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key5" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key50; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key50" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key51; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key51" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key52; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key52" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key53; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key53" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key54; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key54" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key55; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key55" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key56; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key56" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key57; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key57" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key58; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key58" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key59; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key59" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key6; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key6" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key60; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key60" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key61; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key61" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key62; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key62" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key63; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key63" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key64; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key64" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key65; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key65" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key66; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key66" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key67; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key67" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key68; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key68" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key69; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key69" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key7; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key7" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key70; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key70" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key71; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key71" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key72; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key72" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key73; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key73" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key74; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key74" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key75; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key75" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key76; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key76" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key77; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key77" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key78; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key78" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key79; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key79" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key8; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key8" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_email_ins_key9; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key9" UNIQUE (email_ins);


--
-- Name: Institutions Institutions_pkey; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_pkey" PRIMARY KEY (id);


--
-- Name: Packages Packages_pkey; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Packages"
    ADD CONSTRAINT "Packages_pkey" PRIMARY KEY (id);


--
-- Name: Purchases Purchases_pkey; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Purchases"
    ADD CONSTRAINT "Purchases_pkey" PRIMARY KEY (id);


--
-- Name: Services Services_pkey; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_pkey" PRIMARY KEY (id);


--
-- Name: Styles Styles_pkey; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Styles"
    ADD CONSTRAINT "Styles_pkey" PRIMARY KEY (id);


--
-- Name: Users Users_email_key; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);


--
-- Name: Users Users_email_key1; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key1" UNIQUE (email);


--
-- Name: Users Users_email_key2; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key2" UNIQUE (email);


--
-- Name: Users Users_email_key3; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key3" UNIQUE (email);


--
-- Name: Users Users_email_key4; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key4" UNIQUE (email);


--
-- Name: Users Users_email_key5; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key5" UNIQUE (email);


--
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- Name: institution_has_style institution_has_style_pkey; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public.institution_has_style
    ADD CONSTRAINT institution_has_style_pkey PRIMARY KEY (style_id, institution_id);


--
-- Name: package_has_style package_has_style_pkey; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public.package_has_style
    ADD CONSTRAINT package_has_style_pkey PRIMARY KEY (package_id, style_id);


--
-- Name: purchase_has_package purchase_has_package_pkey; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public.purchase_has_package
    ADD CONSTRAINT purchase_has_package_pkey PRIMARY KEY (package_id, purchase_id);


--
-- Name: service_has_category service_has_category_pkey; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public.service_has_category
    ADD CONSTRAINT service_has_category_pkey PRIMARY KEY (service_id, category_id);


--
-- Name: service_has_package service_has_package_pkey; Type: CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public.service_has_package
    ADD CONSTRAINT service_has_package_pkey PRIMARY KEY (service_id, package_id);


--
-- Name: Institutions Institutions_institution_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_institution_id_fkey" FOREIGN KEY (institution_id) REFERENCES public."Styles"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Institutions Institutions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Purchases Purchases_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Purchases"
    ADD CONSTRAINT "Purchases_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Services Services_institution_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_institution_id_fkey" FOREIGN KEY (institution_id) REFERENCES public."Institutions"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Services Services_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_service_id_fkey" FOREIGN KEY (service_id) REFERENCES public."Images"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: institution_has_style institution_has_style_institution_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public.institution_has_style
    ADD CONSTRAINT institution_has_style_institution_id_fkey FOREIGN KEY (institution_id) REFERENCES public."Styles"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: institution_has_style institution_has_style_style_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public.institution_has_style
    ADD CONSTRAINT institution_has_style_style_id_fkey FOREIGN KEY (style_id) REFERENCES public."Institutions"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: package_has_style package_has_style_package_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public.package_has_style
    ADD CONSTRAINT package_has_style_package_id_fkey FOREIGN KEY (package_id) REFERENCES public."Packages"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: package_has_style package_has_style_style_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public.package_has_style
    ADD CONSTRAINT package_has_style_style_id_fkey FOREIGN KEY (style_id) REFERENCES public."Styles"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: purchase_has_package purchase_has_package_package_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public.purchase_has_package
    ADD CONSTRAINT purchase_has_package_package_id_fkey FOREIGN KEY (package_id) REFERENCES public."Packages"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: purchase_has_package purchase_has_package_purchase_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public.purchase_has_package
    ADD CONSTRAINT purchase_has_package_purchase_id_fkey FOREIGN KEY (purchase_id) REFERENCES public."Purchases"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: service_has_category service_has_category_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public.service_has_category
    ADD CONSTRAINT service_has_category_category_id_fkey FOREIGN KEY (category_id) REFERENCES public."Categories"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: service_has_category service_has_category_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public.service_has_category
    ADD CONSTRAINT service_has_category_service_id_fkey FOREIGN KEY (service_id) REFERENCES public."Services"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: service_has_package service_has_package_package_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public.service_has_package
    ADD CONSTRAINT service_has_package_package_id_fkey FOREIGN KEY (package_id) REFERENCES public."Packages"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: service_has_package service_has_package_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qualiextra
--

ALTER TABLE ONLY public.service_has_package
    ADD CONSTRAINT service_has_package_service_id_fkey FOREIGN KEY (service_id) REFERENCES public."Services"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

