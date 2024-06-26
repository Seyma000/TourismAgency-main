toc.dat                                                                                             0000600 0004000 0002000 00000033034 14611267646 0014457 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       9                |            turizm    13.14    16.2 0    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    33254    turizm    DATABASE     {   CREATE DATABASE turizm WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_T�rkiye.1254';
    DROP DATABASE turizm;
                postgres    false                     2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false         �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4         �            1259    33255    hotel    TABLE     �  CREATE TABLE public.hotel (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    address text NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    star character(1) NOT NULL,
    car_park boolean NOT NULL,
    wifi boolean NOT NULL,
    pool boolean NOT NULL,
    fitness boolean NOT NULL,
    concierge boolean NOT NULL,
    spa boolean NOT NULL,
    room_service boolean NOT NULL
);
    DROP TABLE public.hotel;
       public         heap    postgres    false    4         �            1259    33261    hotel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hotel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.hotel_id_seq;
       public          postgres    false    4    200         �           0    0    hotel_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.hotel_id_seq OWNED BY public.hotel.id;
          public          postgres    false    201         �            1259    33263    hotel_pension    TABLE     �   CREATE TABLE public.hotel_pension (
    id integer NOT NULL,
    hotel_id integer NOT NULL,
    pension_type character varying(255) NOT NULL
);
 !   DROP TABLE public.hotel_pension;
       public         heap    postgres    false    4         �            1259    33266    hotel_pension_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hotel_pension_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.hotel_pension_id_seq;
       public          postgres    false    4    202         �           0    0    hotel_pension_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.hotel_pension_id_seq OWNED BY public.hotel_pension.id;
          public          postgres    false    203         �            1259    33268    hotel_season    TABLE     �   CREATE TABLE public.hotel_season (
    id integer NOT NULL,
    hotel_id integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL
);
     DROP TABLE public.hotel_season;
       public         heap    postgres    false    4         �            1259    33271    hotel_season_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hotel_season_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.hotel_season_id_seq;
       public          postgres    false    4    204         �           0    0    hotel_season_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.hotel_season_id_seq OWNED BY public.hotel_season.id;
          public          postgres    false    205         �            1259    33273    reservation    TABLE     �  CREATE TABLE public.reservation (
    id integer NOT NULL,
    room_id integer NOT NULL,
    check_in_date date NOT NULL,
    total_price numeric(10,2) NOT NULL,
    guest_count integer NOT NULL,
    guest_name character varying(255) NOT NULL,
    guest_citizen_id character varying(255) NOT NULL,
    guest_mail character varying(255) NOT NULL,
    guest_phone character varying(255) NOT NULL,
    check_out_date date NOT NULL
);
    DROP TABLE public.reservation;
       public         heap    postgres    false    4         �            1259    33279    reservation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reservation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.reservation_id_seq;
       public          postgres    false    4    206         �           0    0    reservation_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.reservation_id_seq OWNED BY public.reservation.id;
          public          postgres    false    207         �            1259    33281    room    TABLE     �  CREATE TABLE public.room (
    id integer NOT NULL,
    hotel_id integer NOT NULL,
    pension_id integer NOT NULL,
    season_id integer NOT NULL,
    type character varying(255) NOT NULL,
    stock integer NOT NULL,
    adult_price numeric(10,2) NOT NULL,
    child_price numeric(10,2) NOT NULL,
    bed_capacity integer NOT NULL,
    square_meter numeric(10,2) NOT NULL,
    television boolean NOT NULL,
    minibar boolean NOT NULL,
    game_console boolean NOT NULL,
    projection boolean NOT NULL
);
    DROP TABLE public.room;
       public         heap    postgres    false    4         �            1259    33284    room_id_seq    SEQUENCE     �   CREATE SEQUENCE public.room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.room_id_seq;
       public          postgres    false    4    208         �           0    0    room_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.room_id_seq OWNED BY public.room.id;
          public          postgres    false    209         �            1259    33286    user    TABLE     �   CREATE TABLE public."user" (
    user_id integer NOT NULL,
    user_name character varying(255) NOT NULL,
    user_pass character varying(255) NOT NULL,
    user_role character varying(255) NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false    4         �            1259    33292    user_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_user_id_seq;
       public          postgres    false    4    210         �           0    0    user_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.user_user_id_seq OWNED BY public."user".user_id;
          public          postgres    false    211         C           2604    33294    hotel id    DEFAULT     d   ALTER TABLE ONLY public.hotel ALTER COLUMN id SET DEFAULT nextval('public.hotel_id_seq'::regclass);
 7   ALTER TABLE public.hotel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200         D           2604    33295    hotel_pension id    DEFAULT     t   ALTER TABLE ONLY public.hotel_pension ALTER COLUMN id SET DEFAULT nextval('public.hotel_pension_id_seq'::regclass);
 ?   ALTER TABLE public.hotel_pension ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202         E           2604    33296    hotel_season id    DEFAULT     r   ALTER TABLE ONLY public.hotel_season ALTER COLUMN id SET DEFAULT nextval('public.hotel_season_id_seq'::regclass);
 >   ALTER TABLE public.hotel_season ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204         F           2604    33297    reservation id    DEFAULT     p   ALTER TABLE ONLY public.reservation ALTER COLUMN id SET DEFAULT nextval('public.reservation_id_seq'::regclass);
 =   ALTER TABLE public.reservation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206         G           2604    33298    room id    DEFAULT     b   ALTER TABLE ONLY public.room ALTER COLUMN id SET DEFAULT nextval('public.room_id_seq'::regclass);
 6   ALTER TABLE public.room ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208         H           2604    33299    user user_id    DEFAULT     n   ALTER TABLE ONLY public."user" ALTER COLUMN user_id SET DEFAULT nextval('public.user_user_id_seq'::regclass);
 =   ALTER TABLE public."user" ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    211    210         �          0    33255    hotel 
   TABLE DATA           �   COPY public.hotel (id, name, address, email, phone, star, car_park, wifi, pool, fitness, concierge, spa, room_service) FROM stdin;
    public          postgres    false    200       3031.dat �          0    33263    hotel_pension 
   TABLE DATA           C   COPY public.hotel_pension (id, hotel_id, pension_type) FROM stdin;
    public          postgres    false    202       3033.dat �          0    33268    hotel_season 
   TABLE DATA           J   COPY public.hotel_season (id, hotel_id, start_date, end_date) FROM stdin;
    public          postgres    false    204       3035.dat �          0    33273    reservation 
   TABLE DATA           �   COPY public.reservation (id, room_id, check_in_date, total_price, guest_count, guest_name, guest_citizen_id, guest_mail, guest_phone, check_out_date) FROM stdin;
    public          postgres    false    206       3037.dat �          0    33281    room 
   TABLE DATA           �   COPY public.room (id, hotel_id, pension_id, season_id, type, stock, adult_price, child_price, bed_capacity, square_meter, television, minibar, game_console, projection) FROM stdin;
    public          postgres    false    208       3039.dat �          0    33286    user 
   TABLE DATA           J   COPY public."user" (user_id, user_name, user_pass, user_role) FROM stdin;
    public          postgres    false    210       3041.dat �           0    0    hotel_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.hotel_id_seq', 5, true);
          public          postgres    false    201         �           0    0    hotel_pension_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.hotel_pension_id_seq', 1, false);
          public          postgres    false    203         �           0    0    hotel_season_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hotel_season_id_seq', 1, false);
          public          postgres    false    205         �           0    0    reservation_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.reservation_id_seq', 1, false);
          public          postgres    false    207         �           0    0    room_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.room_id_seq', 1, false);
          public          postgres    false    209         �           0    0    user_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_user_id_seq', 1, false);
          public          postgres    false    211         L           2606    33301     hotel_pension hotel_pension_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.hotel_pension
    ADD CONSTRAINT hotel_pension_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.hotel_pension DROP CONSTRAINT hotel_pension_pkey;
       public            postgres    false    202         J           2606    33303    hotel hotel_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.hotel DROP CONSTRAINT hotel_pkey;
       public            postgres    false    200         N           2606    33305    hotel_season hotel_season_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.hotel_season
    ADD CONSTRAINT hotel_season_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.hotel_season DROP CONSTRAINT hotel_season_pkey;
       public            postgres    false    204         P           2606    33307    reservation reservation_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.reservation DROP CONSTRAINT reservation_pkey;
       public            postgres    false    206         R           2606    33309    room room_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.room DROP CONSTRAINT room_pkey;
       public            postgres    false    208         T           2606    33311    user user_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    210                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            3031.dat                                                                                            0000600 0004000 0002000 00000001176 14611267646 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Grand Yazıcı Uludağ	Uludağ Milli Parkı, 16250 Uludağ/Bursa	info@grandyaziciuludag.com.tr	+90 224 244 11 00	5	t	t	t	t	t	t	t
2	Rixos Sungate	Kadriye Mevkii, Serik, Antalya	info@rixossungate.com	+90 242 710 20 00	5	t	t	t	t	t	t	t
3	Maxx Royal Kemer Resort & Spa	Liman Caddesi No:144, Kemer, Antalya	[e-posta adresi kaldırıldı]	+90 242 814 12 34	5	t	t	t	t	t	t	t
4	Sumahan on the Water	Ortabahçe, Caddesi No:103, Beşiktaş, İstanbul	[e-posta adresi kaldırıldı]	+90 212 259 88 88	5	f	t	t	f	f	t	t
5	Divan İstanbul	Atatürk Bulvarı No:185, Taksim, İstanbul	[e-posta adresi kaldırıldı]	+90 212 311 00 00	5	t	t	t	t	t	t	t
\.


                                                                                                                                                                                                                                                                                                                                                                                                  3033.dat                                                                                            0000600 0004000 0002000 00000000005 14611267646 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3035.dat                                                                                            0000600 0004000 0002000 00000000005 14611267646 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3037.dat                                                                                            0000600 0004000 0002000 00000000005 14611267646 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3039.dat                                                                                            0000600 0004000 0002000 00000000005 14611267646 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3041.dat                                                                                            0000600 0004000 0002000 00000000005 14611267646 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000027335 14611267646 0015413 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.14
-- Dumped by pg_dump version 16.2

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

DROP DATABASE turizm;
--
-- Name: turizm; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE turizm WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_T�rkiye.1254';


ALTER DATABASE turizm OWNER TO postgres;

\connect turizm

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: hotel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hotel (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    address text NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    star character(1) NOT NULL,
    car_park boolean NOT NULL,
    wifi boolean NOT NULL,
    pool boolean NOT NULL,
    fitness boolean NOT NULL,
    concierge boolean NOT NULL,
    spa boolean NOT NULL,
    room_service boolean NOT NULL
);


ALTER TABLE public.hotel OWNER TO postgres;

--
-- Name: hotel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hotel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hotel_id_seq OWNER TO postgres;

--
-- Name: hotel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hotel_id_seq OWNED BY public.hotel.id;


--
-- Name: hotel_pension; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hotel_pension (
    id integer NOT NULL,
    hotel_id integer NOT NULL,
    pension_type character varying(255) NOT NULL
);


ALTER TABLE public.hotel_pension OWNER TO postgres;

--
-- Name: hotel_pension_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hotel_pension_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hotel_pension_id_seq OWNER TO postgres;

--
-- Name: hotel_pension_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hotel_pension_id_seq OWNED BY public.hotel_pension.id;


--
-- Name: hotel_season; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hotel_season (
    id integer NOT NULL,
    hotel_id integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL
);


ALTER TABLE public.hotel_season OWNER TO postgres;

--
-- Name: hotel_season_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hotel_season_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hotel_season_id_seq OWNER TO postgres;

--
-- Name: hotel_season_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hotel_season_id_seq OWNED BY public.hotel_season.id;


--
-- Name: reservation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reservation (
    id integer NOT NULL,
    room_id integer NOT NULL,
    check_in_date date NOT NULL,
    total_price numeric(10,2) NOT NULL,
    guest_count integer NOT NULL,
    guest_name character varying(255) NOT NULL,
    guest_citizen_id character varying(255) NOT NULL,
    guest_mail character varying(255) NOT NULL,
    guest_phone character varying(255) NOT NULL,
    check_out_date date NOT NULL
);


ALTER TABLE public.reservation OWNER TO postgres;

--
-- Name: reservation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reservation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reservation_id_seq OWNER TO postgres;

--
-- Name: reservation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reservation_id_seq OWNED BY public.reservation.id;


--
-- Name: room; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.room (
    id integer NOT NULL,
    hotel_id integer NOT NULL,
    pension_id integer NOT NULL,
    season_id integer NOT NULL,
    type character varying(255) NOT NULL,
    stock integer NOT NULL,
    adult_price numeric(10,2) NOT NULL,
    child_price numeric(10,2) NOT NULL,
    bed_capacity integer NOT NULL,
    square_meter numeric(10,2) NOT NULL,
    television boolean NOT NULL,
    minibar boolean NOT NULL,
    game_console boolean NOT NULL,
    projection boolean NOT NULL
);


ALTER TABLE public.room OWNER TO postgres;

--
-- Name: room_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.room_id_seq OWNER TO postgres;

--
-- Name: room_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.room_id_seq OWNED BY public.room.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    user_id integer NOT NULL,
    user_name character varying(255) NOT NULL,
    user_pass character varying(255) NOT NULL,
    user_role character varying(255) NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_user_id_seq OWNER TO postgres;

--
-- Name: user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_user_id_seq OWNED BY public."user".user_id;


--
-- Name: hotel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel ALTER COLUMN id SET DEFAULT nextval('public.hotel_id_seq'::regclass);


--
-- Name: hotel_pension id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel_pension ALTER COLUMN id SET DEFAULT nextval('public.hotel_pension_id_seq'::regclass);


--
-- Name: hotel_season id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel_season ALTER COLUMN id SET DEFAULT nextval('public.hotel_season_id_seq'::regclass);


--
-- Name: reservation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation ALTER COLUMN id SET DEFAULT nextval('public.reservation_id_seq'::regclass);


--
-- Name: room id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room ALTER COLUMN id SET DEFAULT nextval('public.room_id_seq'::regclass);


--
-- Name: user user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN user_id SET DEFAULT nextval('public.user_user_id_seq'::regclass);


--
-- Data for Name: hotel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hotel (id, name, address, email, phone, star, car_park, wifi, pool, fitness, concierge, spa, room_service) FROM stdin;
\.
COPY public.hotel (id, name, address, email, phone, star, car_park, wifi, pool, fitness, concierge, spa, room_service) FROM '$$PATH$$/3031.dat';

--
-- Data for Name: hotel_pension; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hotel_pension (id, hotel_id, pension_type) FROM stdin;
\.
COPY public.hotel_pension (id, hotel_id, pension_type) FROM '$$PATH$$/3033.dat';

--
-- Data for Name: hotel_season; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hotel_season (id, hotel_id, start_date, end_date) FROM stdin;
\.
COPY public.hotel_season (id, hotel_id, start_date, end_date) FROM '$$PATH$$/3035.dat';

--
-- Data for Name: reservation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reservation (id, room_id, check_in_date, total_price, guest_count, guest_name, guest_citizen_id, guest_mail, guest_phone, check_out_date) FROM stdin;
\.
COPY public.reservation (id, room_id, check_in_date, total_price, guest_count, guest_name, guest_citizen_id, guest_mail, guest_phone, check_out_date) FROM '$$PATH$$/3037.dat';

--
-- Data for Name: room; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.room (id, hotel_id, pension_id, season_id, type, stock, adult_price, child_price, bed_capacity, square_meter, television, minibar, game_console, projection) FROM stdin;
\.
COPY public.room (id, hotel_id, pension_id, season_id, type, stock, adult_price, child_price, bed_capacity, square_meter, television, minibar, game_console, projection) FROM '$$PATH$$/3039.dat';

--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (user_id, user_name, user_pass, user_role) FROM stdin;
\.
COPY public."user" (user_id, user_name, user_pass, user_role) FROM '$$PATH$$/3041.dat';

--
-- Name: hotel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hotel_id_seq', 5, true);


--
-- Name: hotel_pension_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hotel_pension_id_seq', 1, false);


--
-- Name: hotel_season_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hotel_season_id_seq', 1, false);


--
-- Name: reservation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reservation_id_seq', 1, false);


--
-- Name: room_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.room_id_seq', 1, false);


--
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_id_seq', 1, false);


--
-- Name: hotel_pension hotel_pension_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel_pension
    ADD CONSTRAINT hotel_pension_pkey PRIMARY KEY (id);


--
-- Name: hotel hotel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (id);


--
-- Name: hotel_season hotel_season_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel_season
    ADD CONSTRAINT hotel_season_pkey PRIMARY KEY (id);


--
-- Name: reservation reservation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_pkey PRIMARY KEY (id);


--
-- Name: room room_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   