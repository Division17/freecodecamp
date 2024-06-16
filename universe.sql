--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: civilization; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civilization (
    name character varying NOT NULL,
    civilization_id integer NOT NULL,
    is_advance boolean
);


ALTER TABLE public.civilization OWNER TO freecodecamp;

--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.civilization_civilization_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civilization_civilization_id_seq OWNER TO freecodecamp;

--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.civilization_civilization_id_seq OWNED BY public.civilization.civilization_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    age integer,
    is_visible boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying NOT NULL,
    moon_id integer NOT NULL,
    is_habited boolean,
    is_explored boolean,
    water boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    has_water boolean,
    locked boolean,
    population numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    star_id integer NOT NULL,
    size integer,
    is_active boolean,
    rouge boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: civilization civilization_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization ALTER COLUMN civilization_id SET DEFAULT nextval('public.civilization_civilization_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: civilization; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civilization VALUES ('FUFA', 1, true);
INSERT INTO public.civilization VALUES ('FUFA0', 2, true);
INSERT INTO public.civilization VALUES ('FUFA1', 3, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('MILKY WAY', 1, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY0', 2, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY1', 3, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY2', 4, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY3', 5, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY4', 6, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY5', 7, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY6', 8, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY7', 9, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY8', 10, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY9', 11, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY10', 12, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY11', 13, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY12', 14, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY13', 15, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY14', 16, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY15', 17, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY16', 18, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY17', 19, 100000, true, 'PART OF CLUSTER SUPER HAI');
INSERT INTO public.galaxy VALUES ('MILKY WAY18', 20, 100000, true, 'PART OF CLUSTER SUPER HAI');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('MOON0', 1, false, false, false, 1);
INSERT INTO public.moon VALUES ('MOON1', 2, false, false, false, 2);
INSERT INTO public.moon VALUES ('MOON2', 3, false, false, false, 3);
INSERT INTO public.moon VALUES ('MOON3', 4, false, false, false, 4);
INSERT INTO public.moon VALUES ('MOON4', 5, false, false, false, 5);
INSERT INTO public.moon VALUES ('MOON5', 6, false, false, false, 6);
INSERT INTO public.moon VALUES ('MOON6', 7, false, false, false, 7);
INSERT INTO public.moon VALUES ('MOON7', 8, false, false, false, 8);
INSERT INTO public.moon VALUES ('MOON8', 9, false, false, false, 9);
INSERT INTO public.moon VALUES ('MOON9', 10, false, false, false, 10);
INSERT INTO public.moon VALUES ('MOON10', 11, false, false, false, 11);
INSERT INTO public.moon VALUES ('MOON11', 12, false, false, false, 12);
INSERT INTO public.moon VALUES ('MOON12', 13, false, false, false, 13);
INSERT INTO public.moon VALUES ('MOON13', 14, false, false, false, 14);
INSERT INTO public.moon VALUES ('MOON14', 15, false, false, false, 15);
INSERT INTO public.moon VALUES ('MOON15', 16, false, false, false, 16);
INSERT INTO public.moon VALUES ('MOON16', 17, false, false, false, 17);
INSERT INTO public.moon VALUES ('MOON17', 18, false, false, false, 18);
INSERT INTO public.moon VALUES ('MOON18', 19, false, false, false, 19);
INSERT INTO public.moon VALUES ('MOON19', 20, false, false, false, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('EARTH', 1, true, false, 100000, 1);
INSERT INTO public.planet VALUES ('EARTH1', 2, true, false, 100000, 2);
INSERT INTO public.planet VALUES ('EARTH2', 3, true, false, 100000, 3);
INSERT INTO public.planet VALUES ('EARTH3', 4, true, false, 100000, 4);
INSERT INTO public.planet VALUES ('EARTH4', 5, true, false, 100000, 5);
INSERT INTO public.planet VALUES ('EARTH5', 6, true, false, 100000, 6);
INSERT INTO public.planet VALUES ('EARTH12', 13, true, false, 123400, 13);
INSERT INTO public.planet VALUES ('EARTH13', 14, true, false, 123400, 14);
INSERT INTO public.planet VALUES ('EARTH14', 15, true, false, 123400, 15);
INSERT INTO public.planet VALUES ('EARTH15', 16, true, false, 123400, 16);
INSERT INTO public.planet VALUES ('EARTH16', 17, true, false, 123400, 17);
INSERT INTO public.planet VALUES ('EARTH17', 18, true, false, 123400, 18);
INSERT INTO public.planet VALUES ('EARTH18', 19, true, false, 123400, 19);
INSERT INTO public.planet VALUES ('EARTH19', 20, true, false, 123400, 20);
INSERT INTO public.planet VALUES ('EARTH6', 7, true, false, 100000, 7);
INSERT INTO public.planet VALUES ('EARTH7', 8, true, false, 100000, 8);
INSERT INTO public.planet VALUES ('EARTH8', 9, true, false, 100000, 9);
INSERT INTO public.planet VALUES ('EARTH9', 10, true, false, 100000, 10);
INSERT INTO public.planet VALUES ('EARTH10', 11, true, false, 100000, 11);
INSERT INTO public.planet VALUES ('EARTH11', 12, true, false, 100000, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('STAR0', 1, 123456123, true, false, 1);
INSERT INTO public.star VALUES ('STAR1', 2, 123456123, true, false, 2);
INSERT INTO public.star VALUES ('STAR2', 3, 123456123, true, false, 3);
INSERT INTO public.star VALUES ('STAR3', 4, 123456123, true, false, 4);
INSERT INTO public.star VALUES ('STAR4', 5, 123456123, true, false, 5);
INSERT INTO public.star VALUES ('STAR5', 6, 123456123, true, false, 6);
INSERT INTO public.star VALUES ('STAR6', 7, 1234523, true, false, 7);
INSERT INTO public.star VALUES ('STAR7', 8, 1234523, true, false, 8);
INSERT INTO public.star VALUES ('STAR8', 9, 1234523, true, false, 9);
INSERT INTO public.star VALUES ('STAR9', 10, 1234523, true, false, 10);
INSERT INTO public.star VALUES ('STAR10', 11, 1234523, true, false, 11);
INSERT INTO public.star VALUES ('STAR11', 12, 1234523, true, false, 12);
INSERT INTO public.star VALUES ('STAR12', 13, 1234523, true, false, 13);
INSERT INTO public.star VALUES ('STAR13', 14, 1234523, true, false, 14);
INSERT INTO public.star VALUES ('STAR14', 15, 1234523, true, false, 15);
INSERT INTO public.star VALUES ('STAR15', 16, 1234523, true, false, 16);
INSERT INTO public.star VALUES ('STAR16', 17, 1234523, true, false, 17);
INSERT INTO public.star VALUES ('STAR17', 18, 1234523, true, false, 18);
INSERT INTO public.star VALUES ('STAR18', 19, 1234523, true, false, 19);
INSERT INTO public.star VALUES ('STAR19', 20, 1234523, true, false, 20);


--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.civilization_civilization_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: civilization civilization_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_name_key UNIQUE (name);


--
-- Name: civilization civilization_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_pkey PRIMARY KEY (civilization_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

