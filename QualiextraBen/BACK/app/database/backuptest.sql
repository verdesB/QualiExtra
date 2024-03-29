-- SQLBook: Code
PGDMP     6    	            	    {         
   qualiextra    15.3    15.3 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16471 
   qualiextra    DATABASE     }   CREATE DATABASE qualiextra WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
    DROP DATABASE qualiextra;
             
   qualiextra    false            �            1259    32968 
   Categories    TABLE     	  CREATE TABLE public."Categories" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name_catg character varying(255) NOT NULL,
    description_catg character varying(255) NOT NULL
);
     DROP TABLE public."Categories";
       public         heap 
   qualiextra    false            �            1259    32967    Categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Categories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Categories_id_seq";
       public       
   qualiextra    false    217            !           0    0    Categories_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Categories_id_seq" OWNED BY public."Categories".id;
          public       
   qualiextra    false    216            �            1259    32977    Images    TABLE     �   CREATE TABLE public."Images" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Images";
       public         heap 
   qualiextra    false            �            1259    32976 
   Images_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Images_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Images_id_seq";
       public       
   qualiextra    false    219            "           0    0 
   Images_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Images_id_seq" OWNED BY public."Images".id;
          public       
   qualiextra    false    218            �            1259    32984    Institutions    TABLE     "  CREATE TABLE public."Institutions" (
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
 "   DROP TABLE public."Institutions";
       public         heap 
   qualiextra    false            �            1259    32983    Institutions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Institutions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Institutions_id_seq";
       public       
   qualiextra    false    221            #           0    0    Institutions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Institutions_id_seq" OWNED BY public."Institutions".id;
          public       
   qualiextra    false    220            �            1259    32993    Packages    TABLE     �  CREATE TABLE public."Packages" (
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
    DROP TABLE public."Packages";
       public         heap 
   qualiextra    false            �            1259    32992    Packages_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Packages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Packages_id_seq";
       public       
   qualiextra    false    223            $           0    0    Packages_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Packages_id_seq" OWNED BY public."Packages".id;
          public       
   qualiextra    false    222            �            1259    33023 	   Purchases    TABLE     g  CREATE TABLE public."Purchases" (
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
    DROP TABLE public."Purchases";
       public         heap 
   qualiextra    false            �            1259    33022    Purchases_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Purchases_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Purchases_id_seq";
       public       
   qualiextra    false    229            %           0    0    Purchases_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Purchases_id_seq" OWNED BY public."Purchases".id;
          public       
   qualiextra    false    228            �            1259    33002    Services    TABLE     �  CREATE TABLE public."Services" (
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
    DROP TABLE public."Services";
       public         heap 
   qualiextra    false            �            1259    33001    Services_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Services_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Services_id_seq";
       public       
   qualiextra    false    225            &           0    0    Services_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Services_id_seq" OWNED BY public."Services".id;
          public       
   qualiextra    false    224            �            1259    33016    Styles    TABLE     �   CREATE TABLE public."Styles" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name_style character varying(255) NOT NULL
);
    DROP TABLE public."Styles";
       public         heap 
   qualiextra    false            �            1259    33015 
   Styles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Styles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Styles_id_seq";
       public       
   qualiextra    false    227            '           0    0 
   Styles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Styles_id_seq" OWNED BY public."Styles".id;
          public       
   qualiextra    false    226            �            1259    16473    Users    TABLE     �  CREATE TABLE public."Users" (
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
    image_profil character varying(255)
);
    DROP TABLE public."Users";
       public         heap 
   qualiextra    false            �            1259    16472    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public       
   qualiextra    false    215            (           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public       
   qualiextra    false    214            �            1259    33130    institution_has_style    TABLE     �   CREATE TABLE public.institution_has_style (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    style_id integer NOT NULL,
    institution_id integer NOT NULL
);
 )   DROP TABLE public.institution_has_style;
       public         heap 
   qualiextra    false            �            1259    66409    package_has_style    TABLE     �   CREATE TABLE public.package_has_style (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    package_id integer NOT NULL,
    style_id integer NOT NULL
);
 %   DROP TABLE public.package_has_style;
       public         heap 
   qualiextra    false            �            1259    33051    purchase_has_package    TABLE     �   CREATE TABLE public.purchase_has_package (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    package_id integer NOT NULL,
    purchase_id integer NOT NULL
);
 (   DROP TABLE public.purchase_has_package;
       public         heap 
   qualiextra    false            �            1259    33036    service_has_category    TABLE     �   CREATE TABLE public.service_has_category (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    service_id integer NOT NULL,
    category_id integer NOT NULL
);
 (   DROP TABLE public.service_has_category;
       public         heap 
   qualiextra    false            �            1259    53050    service_has_package    TABLE     �   CREATE TABLE public.service_has_package (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    service_id integer NOT NULL,
    package_id integer NOT NULL
);
 '   DROP TABLE public.service_has_package;
       public         heap 
   qualiextra    false            �           2604    32971 
   Categories id    DEFAULT     r   ALTER TABLE ONLY public."Categories" ALTER COLUMN id SET DEFAULT nextval('public."Categories_id_seq"'::regclass);
 >   ALTER TABLE public."Categories" ALTER COLUMN id DROP DEFAULT;
       public       
   qualiextra    false    216    217    217            �           2604    32980 	   Images id    DEFAULT     j   ALTER TABLE ONLY public."Images" ALTER COLUMN id SET DEFAULT nextval('public."Images_id_seq"'::regclass);
 :   ALTER TABLE public."Images" ALTER COLUMN id DROP DEFAULT;
       public       
   qualiextra    false    218    219    219            �           2604    32987    Institutions id    DEFAULT     v   ALTER TABLE ONLY public."Institutions" ALTER COLUMN id SET DEFAULT nextval('public."Institutions_id_seq"'::regclass);
 @   ALTER TABLE public."Institutions" ALTER COLUMN id DROP DEFAULT;
       public       
   qualiextra    false    221    220    221            �           2604    32996    Packages id    DEFAULT     n   ALTER TABLE ONLY public."Packages" ALTER COLUMN id SET DEFAULT nextval('public."Packages_id_seq"'::regclass);
 <   ALTER TABLE public."Packages" ALTER COLUMN id DROP DEFAULT;
       public       
   qualiextra    false    223    222    223            �           2604    33026    Purchases id    DEFAULT     p   ALTER TABLE ONLY public."Purchases" ALTER COLUMN id SET DEFAULT nextval('public."Purchases_id_seq"'::regclass);
 =   ALTER TABLE public."Purchases" ALTER COLUMN id DROP DEFAULT;
       public       
   qualiextra    false    228    229    229            �           2604    33005    Services id    DEFAULT     n   ALTER TABLE ONLY public."Services" ALTER COLUMN id SET DEFAULT nextval('public."Services_id_seq"'::regclass);
 <   ALTER TABLE public."Services" ALTER COLUMN id DROP DEFAULT;
       public       
   qualiextra    false    225    224    225            �           2604    33019 	   Styles id    DEFAULT     j   ALTER TABLE ONLY public."Styles" ALTER COLUMN id SET DEFAULT nextval('public."Styles_id_seq"'::regclass);
 :   ALTER TABLE public."Styles" ALTER COLUMN id DROP DEFAULT;
       public       
   qualiextra    false    226    227    227            �           2604    16476    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public       
   qualiextra    false    215    214    215            	          0    32968 
   Categories 
   TABLE DATA           a   COPY public."Categories" (id, "createdAt", "updatedAt", name_catg, description_catg) FROM stdin;
    public       
   qualiextra    false    217   ��                 0    32977    Images 
   TABLE DATA           F   COPY public."Images" (id, name, "createdAt", "updatedAt") FROM stdin;
    public       
   qualiextra    false    219   ��       
          0    32984    Institutions 
   TABLE DATA           �   COPY public."Institutions" (id, "createdAt", "updatedAt", name_ins, cover, email_ins, adress_ins, city_ins, cp_ins, phone_ins, average_price, experiences, institution_id, user_id) FROM stdin;
    public       
   qualiextra    false    221   
�                 0    32993    Packages 
   TABLE DATA           �   COPY public."Packages" (id, price, quantity, available, "createdAt", "updatedAt", date_start, date_end, name_pkg, capacity) FROM stdin;
    public       
   qualiextra    false    223   ��                 0    33023 	   Purchases 
   TABLE DATA           �   COPY public."Purchases" (id, quantity, price, date_start, date_end, hour_start, hour_end, "createdAt", "updatedAt", user_id) FROM stdin;
    public       
   qualiextra    false    229    �                 0    33002    Services 
   TABLE DATA           �   COPY public."Services" (id, "createdAt", "updatedAt", name_serv, description_serv, hour_start, hour_end, service_id, institution_id, cover_serv) FROM stdin;
    public       
   qualiextra    false    225   =�                 0    33016    Styles 
   TABLE DATA           L   COPY public."Styles" (id, "createdAt", "updatedAt", name_style) FROM stdin;
    public       
   qualiextra    false    227   1                0    16473    Users 
   TABLE DATA           �   COPY public."Users" (id, role, firstname, lastname, password, email, birthday, "createdAt", "updatedAt", adress_user, city_user, cp_user, phone_user, image_profil) FROM stdin;
    public       
   qualiextra    false    215   N                0    33130    institution_has_style 
   TABLE DATA           c   COPY public.institution_has_style ("createdAt", "updatedAt", style_id, institution_id) FROM stdin;
    public       
   qualiextra    false    232   �                0    66409    package_has_style 
   TABLE DATA           [   COPY public.package_has_style ("createdAt", "updatedAt", package_id, style_id) FROM stdin;
    public       
   qualiextra    false    234   	                0    33051    purchase_has_package 
   TABLE DATA           a   COPY public.purchase_has_package ("createdAt", "updatedAt", package_id, purchase_id) FROM stdin;
    public       
   qualiextra    false    231   1	                0    33036    service_has_category 
   TABLE DATA           a   COPY public.service_has_category ("createdAt", "updatedAt", service_id, category_id) FROM stdin;
    public       
   qualiextra    false    230   N	                0    53050    service_has_package 
   TABLE DATA           _   COPY public.service_has_package ("createdAt", "updatedAt", service_id, package_id) FROM stdin;
    public       
   qualiextra    false    233   k	      )           0    0    Categories_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Categories_id_seq"', 1, false);
          public       
   qualiextra    false    216            *           0    0 
   Images_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Images_id_seq"', 1, false);
          public       
   qualiextra    false    218            +           0    0    Institutions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Institutions_id_seq"', 48, true);
          public       
   qualiextra    false    220            ,           0    0    Packages_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Packages_id_seq"', 49, true);
          public       
   qualiextra    false    222            -           0    0    Purchases_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Purchases_id_seq"', 1, false);
          public       
   qualiextra    false    228            .           0    0    Services_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Services_id_seq"', 115, true);
          public       
   qualiextra    false    224            /           0    0 
   Styles_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Styles_id_seq"', 1, false);
          public       
   qualiextra    false    226            0           0    0    Users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Users_id_seq"', 58, true);
          public       
   qualiextra    false    214            �           2606    32975    Categories Categories_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_pkey";
       public         
   qualiextra    false    217            �           2606    32982    Images Images_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Images"
    ADD CONSTRAINT "Images_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Images" DROP CONSTRAINT "Images_pkey";
       public         
   qualiextra    false    219            �           2606    66550 '   Institutions Institutions_email_ins_key 
   CONSTRAINT     k   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key" UNIQUE (email_ins);
 U   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key";
       public         
   qualiextra    false    221            �           2606    66566 (   Institutions Institutions_email_ins_key1 
   CONSTRAINT     l   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key1" UNIQUE (email_ins);
 V   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key1";
       public         
   qualiextra    false    221            �           2606    66484 )   Institutions Institutions_email_ins_key10 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key10" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key10";
       public         
   qualiextra    false    221            �           2606    66528 )   Institutions Institutions_email_ins_key11 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key11" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key11";
       public         
   qualiextra    false    221            �           2606    66486 )   Institutions Institutions_email_ins_key12 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key12" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key12";
       public         
   qualiextra    false    221            �           2606    66488 )   Institutions Institutions_email_ins_key13 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key13" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key13";
       public         
   qualiextra    false    221            �           2606    66526 )   Institutions Institutions_email_ins_key14 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key14" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key14";
       public         
   qualiextra    false    221            �           2606    66490 )   Institutions Institutions_email_ins_key15 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key15" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key15";
       public         
   qualiextra    false    221            �           2606    66496 )   Institutions Institutions_email_ins_key16 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key16" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key16";
       public         
   qualiextra    false    221            �           2606    66492 )   Institutions Institutions_email_ins_key17 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key17" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key17";
       public         
   qualiextra    false    221            �           2606    66494 )   Institutions Institutions_email_ins_key18 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key18" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key18";
       public         
   qualiextra    false    221            �           2606    66552 )   Institutions Institutions_email_ins_key19 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key19" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key19";
       public         
   qualiextra    false    221            �           2606    66568 (   Institutions Institutions_email_ins_key2 
   CONSTRAINT     l   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key2" UNIQUE (email_ins);
 V   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key2";
       public         
   qualiextra    false    221            �           2606    66470 )   Institutions Institutions_email_ins_key20 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key20" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key20";
       public         
   qualiextra    false    221            �           2606    66554 )   Institutions Institutions_email_ins_key21 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key21" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key21";
       public         
   qualiextra    false    221            �           2606    66468 )   Institutions Institutions_email_ins_key22 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key22" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key22";
       public         
   qualiextra    false    221            �           2606    66466 )   Institutions Institutions_email_ins_key23 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key23" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key23";
       public         
   qualiextra    false    221            �           2606    66464 )   Institutions Institutions_email_ins_key24 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key24" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key24";
       public         
   qualiextra    false    221            �           2606    66462 )   Institutions Institutions_email_ins_key25 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key25" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key25";
       public         
   qualiextra    false    221            �           2606    66556 )   Institutions Institutions_email_ins_key26 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key26" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key26";
       public         
   qualiextra    false    221            �           2606    66558 )   Institutions Institutions_email_ins_key27 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key27" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key27";
       public         
   qualiextra    false    221            �           2606    66560 )   Institutions Institutions_email_ins_key28 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key28" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key28";
       public         
   qualiextra    false    221            �           2606    66562 )   Institutions Institutions_email_ins_key29 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key29" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key29";
       public         
   qualiextra    false    221            �           2606    66570 (   Institutions Institutions_email_ins_key3 
   CONSTRAINT     l   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key3" UNIQUE (email_ins);
 V   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key3";
       public         
   qualiextra    false    221            �           2606    66460 )   Institutions Institutions_email_ins_key30 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key30" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key30";
       public         
   qualiextra    false    221            �           2606    66564 )   Institutions Institutions_email_ins_key31 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key31" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key31";
       public         
   qualiextra    false    221            �           2606    66458 )   Institutions Institutions_email_ins_key32 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key32" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key32";
       public         
   qualiextra    false    221            �           2606    66476 )   Institutions Institutions_email_ins_key33 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key33" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key33";
       public         
   qualiextra    false    221            �           2606    66474 )   Institutions Institutions_email_ins_key34 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key34" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key34";
       public         
   qualiextra    false    221            �           2606    66592 )   Institutions Institutions_email_ins_key35 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key35" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key35";
       public         
   qualiextra    false    221            �           2606    66580 )   Institutions Institutions_email_ins_key36 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key36" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key36";
       public         
   qualiextra    false    221            �           2606    66582 )   Institutions Institutions_email_ins_key37 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key37" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key37";
       public         
   qualiextra    false    221            �           2606    66584 )   Institutions Institutions_email_ins_key38 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key38" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key38";
       public         
   qualiextra    false    221            �           2606    66590 )   Institutions Institutions_email_ins_key39 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key39" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key39";
       public         
   qualiextra    false    221            �           2606    66572 (   Institutions Institutions_email_ins_key4 
   CONSTRAINT     l   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key4" UNIQUE (email_ins);
 V   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key4";
       public         
   qualiextra    false    221            �           2606    66586 )   Institutions Institutions_email_ins_key40 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key40" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key40";
       public         
   qualiextra    false    221             
           2606    66588 )   Institutions Institutions_email_ins_key41 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key41" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key41";
       public         
   qualiextra    false    221            
           2606    66578 )   Institutions Institutions_email_ins_key42 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key42" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key42";
       public         
   qualiextra    false    221            
           2606    66548 )   Institutions Institutions_email_ins_key43 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key43" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key43";
       public         
   qualiextra    false    221            
           2606    66542 )   Institutions Institutions_email_ins_key44 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key44" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key44";
       public         
   qualiextra    false    221            
           2606    66546 )   Institutions Institutions_email_ins_key45 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key45" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key45";
       public         
   qualiextra    false    221            

           2606    66544 )   Institutions Institutions_email_ins_key46 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key46" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key46";
       public         
   qualiextra    false    221            
           2606    66524 )   Institutions Institutions_email_ins_key47 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key47" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key47";
       public         
   qualiextra    false    221            
           2606    66504 )   Institutions Institutions_email_ins_key48 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key48" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key48";
       public         
   qualiextra    false    221            
           2606    66522 )   Institutions Institutions_email_ins_key49 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key49" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key49";
       public         
   qualiextra    false    221            
           2606    66574 (   Institutions Institutions_email_ins_key5 
   CONSTRAINT     l   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key5" UNIQUE (email_ins);
 V   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key5";
       public         
   qualiextra    false    221            
           2606    66520 )   Institutions Institutions_email_ins_key50 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key50" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key50";
       public         
   qualiextra    false    221            
           2606    66518 )   Institutions Institutions_email_ins_key51 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key51" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key51";
       public         
   qualiextra    false    221            
           2606    66506 )   Institutions Institutions_email_ins_key52 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key52" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key52";
       public         
   qualiextra    false    221            
           2606    66508 )   Institutions Institutions_email_ins_key53 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key53" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key53";
       public         
   qualiextra    false    221            
           2606    66516 )   Institutions Institutions_email_ins_key54 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key54" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key54";
       public         
   qualiextra    false    221            
           2606    66502 )   Institutions Institutions_email_ins_key55 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key55" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key55";
       public         
   qualiextra    false    221             
           2606    66498 )   Institutions Institutions_email_ins_key56 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key56" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key56";
       public         
   qualiextra    false    221            "
           2606    66500 )   Institutions Institutions_email_ins_key57 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key57" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key57";
       public         
   qualiextra    false    221            $
           2606    66482 )   Institutions Institutions_email_ins_key58 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key58" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key58";
       public         
   qualiextra    false    221            &
           2606    66478 )   Institutions Institutions_email_ins_key59 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key59" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key59";
       public         
   qualiextra    false    221            (
           2606    66534 (   Institutions Institutions_email_ins_key6 
   CONSTRAINT     l   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key6" UNIQUE (email_ins);
 V   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key6";
       public         
   qualiextra    false    221            *
           2606    66480 )   Institutions Institutions_email_ins_key60 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key60" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key60";
       public         
   qualiextra    false    221            ,
           2606    66456 )   Institutions Institutions_email_ins_key61 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key61" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key61";
       public         
   qualiextra    false    221            .
           2606    66446 )   Institutions Institutions_email_ins_key62 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key62" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key62";
       public         
   qualiextra    false    221            0
           2606    66454 )   Institutions Institutions_email_ins_key63 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key63" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key63";
       public         
   qualiextra    false    221            2
           2606    66452 )   Institutions Institutions_email_ins_key64 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key64" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key64";
       public         
   qualiextra    false    221            4
           2606    66448 )   Institutions Institutions_email_ins_key65 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key65" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key65";
       public         
   qualiextra    false    221            6
           2606    66450 )   Institutions Institutions_email_ins_key66 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key66" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key66";
       public         
   qualiextra    false    221            8
           2606    66514 )   Institutions Institutions_email_ins_key67 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key67" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key67";
       public         
   qualiextra    false    221            :
           2606    66510 )   Institutions Institutions_email_ins_key68 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key68" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key68";
       public         
   qualiextra    false    221            <
           2606    66512 )   Institutions Institutions_email_ins_key69 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key69" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key69";
       public         
   qualiextra    false    221            >
           2606    66576 (   Institutions Institutions_email_ins_key7 
   CONSTRAINT     l   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key7" UNIQUE (email_ins);
 V   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key7";
       public         
   qualiextra    false    221            @
           2606    66540 )   Institutions Institutions_email_ins_key70 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key70" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key70";
       public         
   qualiextra    false    221            B
           2606    66536 )   Institutions Institutions_email_ins_key71 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key71" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key71";
       public         
   qualiextra    false    221            D
           2606    66538 )   Institutions Institutions_email_ins_key72 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key72" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key72";
       public         
   qualiextra    false    221            F
           2606    66472 )   Institutions Institutions_email_ins_key73 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key73" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key73";
       public         
   qualiextra    false    221            H
           2606    66594 )   Institutions Institutions_email_ins_key74 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key74" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key74";
       public         
   qualiextra    false    221            J
           2606    66596 )   Institutions Institutions_email_ins_key75 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key75" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key75";
       public         
   qualiextra    false    221            L
           2606    66444 )   Institutions Institutions_email_ins_key76 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key76" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key76";
       public         
   qualiextra    false    221            N
           2606    66598 )   Institutions Institutions_email_ins_key77 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key77" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key77";
       public         
   qualiextra    false    221            P
           2606    66442 )   Institutions Institutions_email_ins_key78 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key78" UNIQUE (email_ins);
 W   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key78";
       public         
   qualiextra    false    221            R
           2606    66532 (   Institutions Institutions_email_ins_key8 
   CONSTRAINT     l   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key8" UNIQUE (email_ins);
 V   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key8";
       public         
   qualiextra    false    221            T
           2606    66530 (   Institutions Institutions_email_ins_key9 
   CONSTRAINT     l   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_email_ins_key9" UNIQUE (email_ins);
 V   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_email_ins_key9";
       public         
   qualiextra    false    221            V
           2606    32991    Institutions Institutions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_pkey";
       public         
   qualiextra    false    221            X
           2606    33000    Packages Packages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Packages"
    ADD CONSTRAINT "Packages_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Packages" DROP CONSTRAINT "Packages_pkey";
       public         
   qualiextra    false    223            ^
           2606    33030    Purchases Purchases_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Purchases"
    ADD CONSTRAINT "Purchases_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Purchases" DROP CONSTRAINT "Purchases_pkey";
       public         
   qualiextra    false    229            Z
           2606    33009    Services Services_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_pkey";
       public         
   qualiextra    false    225            \
           2606    33021    Styles Styles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Styles"
    ADD CONSTRAINT "Styles_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Styles" DROP CONSTRAINT "Styles_pkey";
       public         
   qualiextra    false    227            �           2606    66428    Users Users_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key";
       public         
   qualiextra    false    215            �           2606    66430    Users Users_email_key1 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key1" UNIQUE (email);
 D   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key1";
       public         
   qualiextra    false    215            �           2606    66432    Users Users_email_key2 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key2" UNIQUE (email);
 D   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key2";
       public         
   qualiextra    false    215            �           2606    66434    Users Users_email_key3 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key3" UNIQUE (email);
 D   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key3";
       public         
   qualiextra    false    215            �           2606    66436    Users Users_email_key4 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key4" UNIQUE (email);
 D   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key4";
       public         
   qualiextra    false    215            �           2606    66438    Users Users_email_key5 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key5" UNIQUE (email);
 D   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key5";
       public         
   qualiextra    false    215            �           2606    16480    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public         
   qualiextra    false    215            d
           2606    33134 0   institution_has_style institution_has_style_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.institution_has_style
    ADD CONSTRAINT institution_has_style_pkey PRIMARY KEY (style_id, institution_id);
 Z   ALTER TABLE ONLY public.institution_has_style DROP CONSTRAINT institution_has_style_pkey;
       public         
   qualiextra    false    232    232            h
           2606    66413 (   package_has_style package_has_style_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.package_has_style
    ADD CONSTRAINT package_has_style_pkey PRIMARY KEY (package_id, style_id);
 R   ALTER TABLE ONLY public.package_has_style DROP CONSTRAINT package_has_style_pkey;
       public         
   qualiextra    false    234    234            b
           2606    33055 .   purchase_has_package purchase_has_package_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.purchase_has_package
    ADD CONSTRAINT purchase_has_package_pkey PRIMARY KEY (package_id, purchase_id);
 X   ALTER TABLE ONLY public.purchase_has_package DROP CONSTRAINT purchase_has_package_pkey;
       public         
   qualiextra    false    231    231            `
           2606    33040 .   service_has_category service_has_category_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.service_has_category
    ADD CONSTRAINT service_has_category_pkey PRIMARY KEY (service_id, category_id);
 X   ALTER TABLE ONLY public.service_has_category DROP CONSTRAINT service_has_category_pkey;
       public         
   qualiextra    false    230    230            f
           2606    53054 ,   service_has_package service_has_package_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.service_has_package
    ADD CONSTRAINT service_has_package_pkey PRIMARY KEY (service_id, package_id);
 V   ALTER TABLE ONLY public.service_has_package DROP CONSTRAINT service_has_package_pkey;
       public         
   qualiextra    false    233    233            i
           2606    66599 -   Institutions Institutions_institution_id_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_institution_id_fkey" FOREIGN KEY (institution_id) REFERENCES public."Styles"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 [   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_institution_id_fkey";
       public       
   qualiextra    false    227    3420    221            j
           2606    66604 &   Institutions Institutions_user_id_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_user_id_fkey";
       public       
   qualiextra    false    3250    221    215            m
           2606    66619     Purchases Purchases_user_id_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Purchases"
    ADD CONSTRAINT "Purchases_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."Purchases" DROP CONSTRAINT "Purchases_user_id_fkey";
       public       
   qualiextra    false    3250    215    229            k
           2606    66614 %   Services Services_institution_id_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_institution_id_fkey" FOREIGN KEY (institution_id) REFERENCES public."Institutions"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_institution_id_fkey";
       public       
   qualiextra    false    225    3414    221            l
           2606    66609 !   Services Services_service_id_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_service_id_fkey" FOREIGN KEY (service_id) REFERENCES public."Images"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_service_id_fkey";
       public       
   qualiextra    false    3254    225    219            r
           2606    33140 ?   institution_has_style institution_has_style_institution_id_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.institution_has_style
    ADD CONSTRAINT institution_has_style_institution_id_fkey FOREIGN KEY (institution_id) REFERENCES public."Styles"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.institution_has_style DROP CONSTRAINT institution_has_style_institution_id_fkey;
       public       
   qualiextra    false    227    232    3420            s
           2606    33135 9   institution_has_style institution_has_style_style_id_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.institution_has_style
    ADD CONSTRAINT institution_has_style_style_id_fkey FOREIGN KEY (style_id) REFERENCES public."Institutions"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.institution_has_style DROP CONSTRAINT institution_has_style_style_id_fkey;
       public       
   qualiextra    false    232    3414    221            v
           2606    66414 3   package_has_style package_has_style_package_id_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.package_has_style
    ADD CONSTRAINT package_has_style_package_id_fkey FOREIGN KEY (package_id) REFERENCES public."Packages"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.package_has_style DROP CONSTRAINT package_has_style_package_id_fkey;
       public       
   qualiextra    false    234    223    3416            w
           2606    66419 1   package_has_style package_has_style_style_id_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.package_has_style
    ADD CONSTRAINT package_has_style_style_id_fkey FOREIGN KEY (style_id) REFERENCES public."Styles"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.package_has_style DROP CONSTRAINT package_has_style_style_id_fkey;
       public       
   qualiextra    false    227    234    3420            p
           2606    33056 9   purchase_has_package purchase_has_package_package_id_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.purchase_has_package
    ADD CONSTRAINT purchase_has_package_package_id_fkey FOREIGN KEY (package_id) REFERENCES public."Packages"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.purchase_has_package DROP CONSTRAINT purchase_has_package_package_id_fkey;
       public       
   qualiextra    false    3416    223    231            q
           2606    33061 :   purchase_has_package purchase_has_package_purchase_id_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.purchase_has_package
    ADD CONSTRAINT purchase_has_package_purchase_id_fkey FOREIGN KEY (purchase_id) REFERENCES public."Purchases"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.purchase_has_package DROP CONSTRAINT purchase_has_package_purchase_id_fkey;
       public       
   qualiextra    false    231    229    3422            n
           2606    33046 :   service_has_category service_has_category_category_id_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.service_has_category
    ADD CONSTRAINT service_has_category_category_id_fkey FOREIGN KEY (category_id) REFERENCES public."Categories"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.service_has_category DROP CONSTRAINT service_has_category_category_id_fkey;
       public       
   qualiextra    false    217    3252    230            o
           2606    33041 9   service_has_category service_has_category_service_id_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.service_has_category
    ADD CONSTRAINT service_has_category_service_id_fkey FOREIGN KEY (service_id) REFERENCES public."Services"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.service_has_category DROP CONSTRAINT service_has_category_service_id_fkey;
       public       
   qualiextra    false    3418    230    225            t
           2606    53060 7   service_has_package service_has_package_package_id_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.service_has_package
    ADD CONSTRAINT service_has_package_package_id_fkey FOREIGN KEY (package_id) REFERENCES public."Packages"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.service_has_package DROP CONSTRAINT service_has_package_package_id_fkey;
       public       
   qualiextra    false    3416    223    233            u
           2606    53055 7   service_has_package service_has_package_service_id_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.service_has_package
    ADD CONSTRAINT service_has_package_service_id_fkey FOREIGN KEY (service_id) REFERENCES public."Services"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.service_has_package DROP CONSTRAINT service_has_package_service_id_fkey;
       public       
   qualiextra    false    3418    233    225            	   
   x������ � �         
   x������ � �      
   �  x����n�:���Spu6�vt�l�hm95�u��q�
M�:2)�8Y�5���Ⱦo�7铔Rb�I{
d)
��?g&��x~�uZ^�]��]?l'�����-t�ϔ����.�.U��0���v.D^@��ա��`S
�_V��a�Kw�����I"���w��II�����q�RT���/�_/�l�^H�zxj g�b��
j,�8t�1�G��ۻ�(M4�>Y1�^`*�T�'5V�^H·�S�>�Ca|�O�vݮ緝(��ǣ�	�c�c��JQA�Z����޺������q?����pr�$�0�n2�j��F��b�����i���$s �ئ�uo�r}�qj8��z
�Q��Hxa	)��U�ż �c=)܋��-<I~g�(t�w��BfPX��"��&���	��z�j4������;����{��N}I����
o�2AQc�����[a'׺G����/&�r�U7���O
��n��C�L���Laar�g�7Df�B2�]��b8-�V����h�V�<;;�X�ã�F\=h��<��F�^Q��M/�Jp�(c�u�_NQ�M��q\%��	ηw��c{C����4�+�Ò<���
���'*{;<Xa�9�~�����wk��tފ��ȵy_���u2>.Of����c�<bp��:2b���t۟���{�*�v'h
(%�[TQC�����	cT��ц���~�Tn��{H�B�&��Q���O|�b>�~�<�<           x��ҽN�0���fF��/���.����H�@�;x#���ABU�Zb;�o��g��(Q7J6Zr%�l�!A��J���TM^}�iL�燙�
1Mc�A02�+4�����R�E�q���-��Fy��nƣ��Dg��jQE�}�����[m���@����h���y�����>,HX~���y��}�׭*Qn��RÎ�����"�͌]��J�s�<I�)��Q�<qH���?�ԇ�߇S��bƁ"Pr#�|xֹ�x%ʌ��T������^         
   x������ � �         �
  x��ZKo��>˿�{	d4;/Y#��-�-����0`���Q[$�j���N�{
� A�N{�%�q�Ŀ$_U7���!��;C�����ꫢ���[�N����l��^��?���;�����N�[�����r�+�x���*ɶ��7VYn��
�2%o���S�T��[��s_S����3�?�Y�OA�������_Be�@n�T��+I���	��q*&�b.�b�<�2���,fm�P$�q��H|���L���'s�?��m&[���y�45�WI��g�y$������BD*_�[XH����Ktn���c���2<#���B�}2}�]=U0JdW�cg��YB�$ c�#��_imr�0�O��Z�~�sdt&��׀���p1�Rp����]���M`V�����x�������%�<��C1�B�cz����=����+ҵ,%�Y�d^�}A���ˊq�bi4֚��R��m�K����"����6A�S���
��(��H_[�-���N�ᢡ�#4p2�9�d�{���⌜�΢H���T&|g�x�f�D�!��#��~.����������w:[�=����`�$��l������'�I�}���Ci��0U��*��w�G����������\�w�~w$_�<zq���F���
��~o��7 �y�@�l����C+�ɭ�	�ϗn�9W�#�܂
��R����PL�V,F�r��&�9�L[��@&}#s�<�D�N��U���+�X̑e!��E~~���j�n^
%<bK ��FSuL�s�eC����
��Π�x W� ��X��E)�_�����װ9kr�o�`�@� ��g�U
�b�@��C/5:��,dDV��Ѫ�	G&�shB"�Sf;�p�R�GZ"�$5�d%{�p,���s�U��
�ly �l)�x�6���~4D�?��	�U��v� �,߅��̝�[�IH��(%�}HCxd$��߆ǃ����:����٭������a�v���o�.���
�v:��^{����.ݺ���@5K�$G	�z��+@�����&uፌ��I�a�W����9�v��VR��HOՈmM��Jym8��"�*�p"h��B����"[�^��GH�qOMt�Fq�� s�$�e�Z�}uԆ!-�m�*C�H�T\d���U=�����p�ܕ�����8�8`��s��m ��~��q��]a�l	ړB5�Q�����l����5��0M�,Sf��%��Qov���<��E�Y"�k,t���lȮ��:Q��A�A�9��DW�#�17`]&$� ��:�Vu@}���N���k�>�힦�{����ݓ7�n���Á?��GG:*���Uh��_{��ۀ��W`/WK�����+KE�uU\¾��q���� ��9�M���&�����_����գ�՟?�m%��tjBo��:�YD���$��=��
�:B�H���G	%u���lci�G�yz��@��6,&y��9���h;��ŧܚT�$ɸܯ3T���*�a��"9�q7H�k�	��֢Zc��՝wA�<��sZWVڕ���`$�Z�Ԋ��epXe��4u��iӬ�~V�r�n�����d��_�)������v6{���~��s>
�����v�������w�ڽ��*LVnml/���7ř��T���N�@
9���'�	�KT��"�唳�k��]�9ʬr�~[��
Ī�s��(
uj�(����5m[5�>�$���Ü:��d�{Ԉ �
<��POi!�V̡�"Y���P��(�~ca���0�C��z0�C��K ;2��p��g5��U�^@�Q%�h*� �+����@��t����j��(P4OPN��BY�m;[6�c�5���sp����zL��<U�{�{���Md_ۧ��W���`z��M�jr{v4�닳�ç���7�?�?y���Q0��`���N���[��ҭ���Ϫ�e`r
�`Jk���B�*�%�9I+�4�QC�Tr�%P�3yewY����	��O�]�c���5j��Q`�yU�����>���#6��[�_�a�E �3��$��.��X8E��t%bm�ƌ�+��R����sY�S�j�	E�&��ǎ#z
F��� LTL�#���~Nt�'��뒰�l!��,;�K�	�ϊ���Ċ�V�V�?i�?r����Ҫ���5AH�e��x[]�
��oC��'o�7����{gwG�w��o��������?�l]��uH�еt�h�]�
Y)�_�l�Ϻ���P�;��w�Ib{��*?������x
��ڃE���-��%N֚e�W���t��j"2'�
o���/�'��ꁸ����n���,�<�dD��'�6��Α(����c�c�NΓQΓ��(�Xk���R�
Ea��}�"��<�����	`b/��֙���*��䆺��Qn��]����<��H"AG�^�G���r��/΢��m#L�n��~
*�W�IP�FpU��`�s���vC�m�2����e��	�a1��>$��F�Fn��1�I@Cޜ�D�@
1�~���BY�#*�.c3��S� ԉ����V��~)��w�"����
�h�Pq���0�t�Z�{-��x���Aޛ)��a��=}k&fx6���{c
��R������
lӼU͇�S�u��V*�
<r���~6a�1ՠ ��G���u���H�!h[s���%vVr�2���̗i�&'?~%�K����62 !1�n��!r*��KT->q�#�vᙟ�bo�t,X��F&d̽A�MK#3'k��"�nK��)]N�
���5�I}�՛ȣvs�����|�S���n���&��9���X�Onܩ�/R�+���o�E���$	�Br���G.���uf�h��~��XVr��������:,�nݙ�p0�<�w!��|�%�aǡh">Q%%ҽ,Äh��P�GQ>E$Z̨P��
��H�N��NPM���c(,�LMf�.T�����:����0�8�s�ůQ�1�Wr����xK1pPv�����J�@2�����Ѕ�t|��|s@�o�u"|�,T�o� ��w��8��D�朶E'.��+i����v�l�׹K�@�9E�N�77Q���S��p�{ G�U%{�X����"��l�)�k����X��9)�,��)��UFM�}��}~qy�VU�2�j�� �"�WU\���U
r�.�����J�j0�S�#L�����p�l�V��Vgҫ�����ZL��t8����^&C}���'����,�Dv�J�	vV�����ۃ�
r|�VU�� ٰ�7�ʯ��{��j�U3�l;%o�aK�W�D�TV/l��6	덁\���)��	����m�q�h�9L"V~=*+�j�D¸�oEy�}
~�#˿��N�	`iPk����
�ݓ�x,�.��>�v.����(��bv��܂��֒+��Ru7�>�jZ��f�F�*�To�w#M�I��后x�HO��ֆ�����m�T��Oo
�>
GɃOn��g{�w�q|x�]�ƍ��G         
   x������ � �         �  x�}��n�0F��)��nT��BV�!JhSR(	3�nlpcB!M��e�6j5m������O�R�>�pV�&���nz��y_G}{Vٳh�g�\���q�oE��N���R�)IZ��&�>��}Z�7�>@��z�$YV�XI���09��F=�a�
4�_��tώ�#�2����%2+A��x�X]��w�ث����{��XE�ϣێ��8��㲸�����Ό/i�G�9/:`%X��4�I������QT��dIWy�5M!�cV>uۛ��T�j�f��u9�F���ʾ������Uq=O�M�w"7M�Dt<��PGҏUӑA�a|e�1�����V��l{冭y5��%_څ�z ���pwq���C?r��6�6+��!_C�I��!���Ȃ�?i���<vh�j��
����         
   x������ � �         
   x������ � �         
   x������ � �         
   x������ � �         �   x�u�;�0E�ZZ���5<@X����8v�E���30��]h95�Z��!�:�ZR���z������1j�!�FR^���!�,bu�(�&�I��ۍ댅ϡ"�� I�c#s���5{�9]7�_|���W*ւ
@����s1��>ҵ(�G�9�A>o�     