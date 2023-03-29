--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    has_planets boolean,
    history text,
    distance numeric NOT NULL
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
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    size integer,
    distance integer
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
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying NOT NULL,
    has_moon boolean,
    distance integer
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
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    distance integer,
    size integer
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
-- Name: universe_desc; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe_desc (
    universe_desc_id integer NOT NULL,
    name character varying NOT NULL,
    detail text NOT NULL
);


ALTER TABLE public.universe_desc OWNER TO freecodecamp;

--
-- Name: universe_desc_universe_desc_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_desc_universe_desc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_desc_universe_desc_id_seq OWNER TO freecodecamp;

--
-- Name: universe_desc_universe_desc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_desc_universe_desc_id_seq OWNED BY public.universe_desc.universe_desc_id;


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
-- Name: universe_desc universe_desc_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_desc ALTER COLUMN universe_desc_id SET DEFAULT nextval('public.universe_desc_universe_desc_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', true, 'blah blah', 5000000);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', true, 'blah blah', 8000000);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', true, 'blah blah', 8000000);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', true, 'blah blah', 8000000);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', true, 'blah blah', 8000000);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', true, 'blah blah', 8000000);
INSERT INTO public.galaxy VALUES (7, 'galaxy7', false, 'blah blah', 8000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'moon-1', 100, 500);
INSERT INTO public.moon VALUES (2, 1, 'moon-2', 100, 500);
INSERT INTO public.moon VALUES (3, 2, 'moon-3', 100, 500);
INSERT INTO public.moon VALUES (4, 2, 'moon-4', 100, 500);
INSERT INTO public.moon VALUES (5, 3, 'moon-5', 100, 500);
INSERT INTO public.moon VALUES (6, 3, 'moon-6', 100, 500);
INSERT INTO public.moon VALUES (7, 4, 'moon-7', 100, 500);
INSERT INTO public.moon VALUES (8, 4, 'moon-8', 100, 500);
INSERT INTO public.moon VALUES (9, 5, 'moon-9', 100, 500);
INSERT INTO public.moon VALUES (10, 5, 'moon-10', 100, 500);
INSERT INTO public.moon VALUES (11, 6, 'moon-11', 100, 500);
INSERT INTO public.moon VALUES (12, 6, 'moon-12', 100, 500);
INSERT INTO public.moon VALUES (13, 7, 'moon-13', 100, 500);
INSERT INTO public.moon VALUES (14, 7, 'moon-14', 100, 500);
INSERT INTO public.moon VALUES (15, 8, 'moon-15', 100, 500);
INSERT INTO public.moon VALUES (16, 8, 'moon-16', 100, 500);
INSERT INTO public.moon VALUES (17, 9, 'moon-17', 100, 500);
INSERT INTO public.moon VALUES (18, 9, 'moon-18', 100, 500);
INSERT INTO public.moon VALUES (19, 10, 'moon-19', 100, 500);
INSERT INTO public.moon VALUES (20, 10, 'moon-20', 100, 500);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'planet1-a', true, 10000);
INSERT INTO public.planet VALUES (2, 1, 'planet1-b', true, 10000);
INSERT INTO public.planet VALUES (3, 2, 'planet2-a', false, 10000);
INSERT INTO public.planet VALUES (4, 2, 'planet2-b', true, 10000);
INSERT INTO public.planet VALUES (5, 3, 'planet3-a', true, 10000);
INSERT INTO public.planet VALUES (6, 3, 'planet3-b', true, 10000);
INSERT INTO public.planet VALUES (7, 4, 'planet4-a', true, 10000);
INSERT INTO public.planet VALUES (8, 4, 'planet4-b', true, 10000);
INSERT INTO public.planet VALUES (9, 5, 'planet5-a', true, 10000);
INSERT INTO public.planet VALUES (10, 5, 'planet5-b', true, 10000);
INSERT INTO public.planet VALUES (11, 6, 'planet6-a', true, 10000);
INSERT INTO public.planet VALUES (12, 6, 'planet6-b', true, 10000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 6, 'star1', 50000, 50);
INSERT INTO public.star VALUES (2, 5, 'star2', 50000, 50);
INSERT INTO public.star VALUES (3, 4, 'star3', 50000, 50);
INSERT INTO public.star VALUES (4, 3, 'star4', 50000, 50);
INSERT INTO public.star VALUES (5, 2, 'star5', 50000, 50);
INSERT INTO public.star VALUES (6, 1, 'star6', 50000, 50);


--
-- Data for Name: universe_desc; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe_desc VALUES (1, 'desc1', 'blah blah');
INSERT INTO public.universe_desc VALUES (2, 'desc2', 'blah blah');
INSERT INTO public.universe_desc VALUES (3, 'desc3', 'blah blah');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: universe_desc_universe_desc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_desc_universe_desc_id_seq', 3, true);


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
-- Name: universe_desc universe_desc_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_desc
    ADD CONSTRAINT universe_desc_name_key UNIQUE (name);


--
-- Name: universe_desc universe_desc_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_desc
    ADD CONSTRAINT universe_desc_pkey PRIMARY KEY (universe_desc_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

