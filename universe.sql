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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_types integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years numeric(4,2),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    distanc_from_earth integer,
    weight integer,
    galaxy_id integer NOT NULL
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
-- Name: galaxy_galaxy_types_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_types_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_types_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_types_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_types_seq OWNED BY public.galaxy.galaxy_types;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_types integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years numeric(4,2),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    distanc_from_earth integer,
    weight integer,
    moon_id integer NOT NULL,
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
-- Name: moon_moon_types_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_types_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_types_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_types_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_types_seq OWNED BY public.moon.moon_types;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_types integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years numeric(4,2),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    distanc_from_earth integer,
    weight integer,
    planet_id integer NOT NULL,
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
-- Name: planet_planet_types_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_types_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_types_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_types_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_types_seq OWNED BY public.planet.planet_types;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_types integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years numeric(4,2),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    distanc_from_earth integer,
    weight integer,
    star_id integer NOT NULL,
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
-- Name: star_star_types_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_types_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_types_seq OWNER TO freecodecamp;

--
-- Name: star_star_types_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_types_seq OWNED BY public.star.star_types;


--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(30),
    description text,
    age_in_millions_of_years numeric(4,2),
    has_life boolean,
    sun_types integer NOT NULL
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


--
-- Name: sun_sun_types_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_types_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_types_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_types_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_types_seq OWNED BY public.sun.sun_types;


--
-- Name: galaxy galaxy_types; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_types SET DEFAULT nextval('public.galaxy_galaxy_types_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_types; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_types SET DEFAULT nextval('public.moon_moon_types_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_types; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_types SET DEFAULT nextval('public.planet_planet_types_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_types; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_types SET DEFAULT nextval('public.star_star_types_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Name: sun sun_types; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_types SET DEFAULT nextval('public.sun_sun_types_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (7, 'Solar System - 1', 20.20, NULL, false, false, NULL, NULL, 7);
INSERT INTO public.galaxy VALUES (8, 'Solar System - 2', 2.20, NULL, false, false, NULL, NULL, 8);
INSERT INTO public.galaxy VALUES (9, 'Solar System - 3', 6.20, NULL, false, false, NULL, NULL, 9);
INSERT INTO public.galaxy VALUES (10, 'Solar System - 4', 7.80, NULL, false, false, NULL, NULL, 10);
INSERT INTO public.galaxy VALUES (11, 'Solar System - 5', 8.20, NULL, false, false, NULL, NULL, 11);
INSERT INTO public.galaxy VALUES (12, 'Solar System - 6', 12.60, NULL, false, false, NULL, NULL, 12);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Moon1', 7.90, NULL, false, true, NULL, NULL, 2, 1);
INSERT INTO public.moon VALUES (3, 'Moon2', 7.90, NULL, false, true, NULL, NULL, 3, 2);
INSERT INTO public.moon VALUES (4, 'Moon3', 7.90, NULL, false, true, NULL, NULL, 4, 3);
INSERT INTO public.moon VALUES (5, 'Moon4', 7.90, NULL, false, true, NULL, NULL, 5, 3);
INSERT INTO public.moon VALUES (6, 'Moon5', 7.90, NULL, false, true, NULL, NULL, 6, 3);
INSERT INTO public.moon VALUES (7, 'Moon6', 7.90, NULL, false, true, NULL, NULL, 7, 4);
INSERT INTO public.moon VALUES (8, 'Moon7', 7.90, NULL, false, true, NULL, NULL, 8, 4);
INSERT INTO public.moon VALUES (9, 'Moon8', 7.90, NULL, false, true, NULL, NULL, 9, 5);
INSERT INTO public.moon VALUES (10, 'Moon9', 7.90, NULL, false, true, NULL, NULL, 10, 6);
INSERT INTO public.moon VALUES (11, 'Moon10', 7.90, NULL, false, true, NULL, NULL, 11, 7);
INSERT INTO public.moon VALUES (12, 'Moon0', 7.90, NULL, false, true, NULL, NULL, 12, 8);
INSERT INTO public.moon VALUES (13, 'Moon11', 7.90, NULL, false, true, NULL, NULL, 13, 10);
INSERT INTO public.moon VALUES (14, 'Moon12', 7.90, NULL, false, true, NULL, NULL, 14, 10);
INSERT INTO public.moon VALUES (15, 'Moon13', 7.90, NULL, false, true, NULL, NULL, 15, 11);
INSERT INTO public.moon VALUES (16, 'Moon14', 7.90, NULL, false, true, NULL, NULL, 16, 11);
INSERT INTO public.moon VALUES (17, 'Moon15', 7.90, NULL, false, true, NULL, NULL, 17, 11);
INSERT INTO public.moon VALUES (18, 'Moon16', 7.90, NULL, false, true, NULL, NULL, 18, 11);
INSERT INTO public.moon VALUES (19, 'Moon17', 7.90, NULL, false, true, NULL, NULL, 19, 11);
INSERT INTO public.moon VALUES (20, 'Moon18', 7.90, NULL, false, true, NULL, NULL, 20, 1);
INSERT INTO public.moon VALUES (21, 'Moon19', 7.90, NULL, false, true, NULL, NULL, 21, 1);
INSERT INTO public.moon VALUES (22, 'Moon20', 7.90, NULL, false, true, NULL, NULL, 22, 1);
INSERT INTO public.moon VALUES (1, 'Moon', 7.90, NULL, false, true, NULL, NULL, 1, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Suns', 13.40, NULL, false, true, NULL, NULL, 1, 2);
INSERT INTO public.planet VALUES (2, 'Venus', 3.40, NULL, false, true, NULL, NULL, 2, 2);
INSERT INTO public.planet VALUES (3, 'Mars', 4.00, NULL, false, true, NULL, NULL, 3, 2);
INSERT INTO public.planet VALUES (4, 'Earth', 2.80, NULL, true, true, NULL, NULL, 4, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 10.00, NULL, false, true, NULL, NULL, 5, 2);
INSERT INTO public.planet VALUES (6, 'Staturn', 20.20, NULL, false, true, NULL, NULL, 6, 2);
INSERT INTO public.planet VALUES (7, 'Mercury', 3.60, NULL, false, true, NULL, NULL, 7, 3);
INSERT INTO public.planet VALUES (8, 'Uranus', 6.80, NULL, false, true, NULL, NULL, 8, 3);
INSERT INTO public.planet VALUES (9, 'Neptun', 7.90, NULL, false, true, NULL, NULL, 9, 3);
INSERT INTO public.planet VALUES (10, 'Planet', 7.90, NULL, false, true, NULL, NULL, 10, 3);
INSERT INTO public.planet VALUES (11, 'Planet1', 7.90, NULL, false, true, NULL, NULL, 11, 3);
INSERT INTO public.planet VALUES (12, 'Planet2', 7.90, NULL, false, true, NULL, NULL, 12, 3);
INSERT INTO public.planet VALUES (13, 'Planet3', 7.90, NULL, false, true, NULL, NULL, 13, 3);
INSERT INTO public.planet VALUES (14, 'Planet4', 7.90, NULL, false, true, NULL, NULL, 14, 4);
INSERT INTO public.planet VALUES (15, 'Planet5', 7.90, NULL, false, true, NULL, NULL, 15, 4);
INSERT INTO public.planet VALUES (16, 'Planet6', 7.90, NULL, false, true, NULL, NULL, 16, 5);
INSERT INTO public.planet VALUES (17, 'Planet7', 7.90, NULL, false, true, NULL, NULL, 17, 5);
INSERT INTO public.planet VALUES (18, 'Planet8', 7.90, NULL, false, true, NULL, NULL, 18, 5);
INSERT INTO public.planet VALUES (19, 'Planet7', 7.90, NULL, false, true, NULL, NULL, 19, 5);
INSERT INTO public.planet VALUES (20, 'Planet9', 7.90, NULL, false, true, NULL, NULL, 20, 5);
INSERT INTO public.planet VALUES (21, 'Planet10', 7.90, NULL, false, true, NULL, NULL, 21, 5);
INSERT INTO public.planet VALUES (22, 'Planet11', 7.90, NULL, false, true, NULL, NULL, 22, 5);
INSERT INTO public.planet VALUES (23, 'Planet12', 7.90, NULL, false, true, NULL, NULL, 23, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'un', 12.60, NULL, false, false, NULL, NULL, 1, 7);
INSERT INTO public.star VALUES (2, 'Sun1', 2.60, NULL, true, false, NULL, NULL, 2, 7);
INSERT INTO public.star VALUES (3, 'Sun2', 5.60, NULL, true, false, NULL, NULL, 3, 7);
INSERT INTO public.star VALUES (4, 'Sun3', 7.50, NULL, true, false, NULL, NULL, 4, 10);
INSERT INTO public.star VALUES (5, 'Sun4', 8.90, NULL, true, false, NULL, NULL, 5, 10);
INSERT INTO public.star VALUES (6, 'Sun5', 10.90, NULL, true, false, NULL, NULL, 6, 10);
INSERT INTO public.star VALUES (7, 'Sun5', 4.30, NULL, true, false, NULL, NULL, 7, 10);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'Sun', NULL, 12.30, NULL, 1);
INSERT INTO public.sun VALUES (2, 'Sun1', NULL, 1.30, NULL, 2);
INSERT INTO public.sun VALUES (3, 'Sun2', NULL, 5.60, NULL, 3);
INSERT INTO public.sun VALUES (4, 'Sun3', NULL, 44.90, NULL, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: galaxy_galaxy_types_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_types_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: moon_moon_types_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_types_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: planet_planet_types_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_types_seq', 23, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: star_star_types_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_types_seq', 7, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 4, true);


--
-- Name: sun_sun_types_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_types_seq', 4, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_galaxy_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_key UNIQUE (galaxy_types);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_moon_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_types_key UNIQUE (moon_types);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_planet_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_key UNIQUE (planet_types);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star star_star_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_types_key UNIQUE (star_types);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: sun sun_sun_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_sun_id_key UNIQUE (sun_id);


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

