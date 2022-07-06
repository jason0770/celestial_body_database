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
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    discovery_year integer,
    discovered_by text,
    radius numeric
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
    name character varying(50) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    discovery_year integer,
    discovered_by text,
    radius numeric
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
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    has_life boolean,
    discovery_year integer,
    discovered_by text,
    radius numeric
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
    name character varying(50) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    sun_id integer NOT NULL,
    total_occurrence_in_earth_day integer,
    discovery_year integer,
    discovered_by text,
    radius numeric
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    name character varying(50) NOT NULL,
    sun_id integer NOT NULL,
    age numeric,
    has_life boolean,
    description text,
    distance_from_earth_in_km numeric,
    discovery_year integer,
    discovered_by text,
    radius numeric
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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Small Magellanic Cloud', 3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Black Eye Galaxy', 4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Cartwheel Galaxy', 5, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Cosmos Redshift', 6, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('lo', 1, 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Europa', 2, 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Elara', 3, 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Sinope', 4, 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 5, 8, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Lysithea', 7, 11, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Carme', 8, 9, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Ganymede', 9, 12, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Metis', 6, 8, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Themisto', 11, 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Callirrhoe', 12, 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Taygete', 13, 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Harpalyke', 14, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Erinome', 15, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Isonoe', 16, 8, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Aitne', 17, 8, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Euanthe', 18, 8, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Autonoe', 19, 9, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Kale', 22, 12, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Hegemone', 20, 12, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Aoede', 23, 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Pasithee', 21, 2, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Orbitar', 3, 1, false, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Arion', 2, 4, false, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Spe*', 1, 1, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Galileo', 4, 3, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Brahe', 5, 2, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Dimidium', 6, 5, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Janssen', 7, 5, false, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Taphao Thong', 8, 1, false, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Taphao Kaew', 9, 1, false, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('AEgir', 10, 3, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Pirx', 11, 2, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Finlay', 12, 6, true, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Andromeda', 1, 1, 1, 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Apus', 3, 1, 2, 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Aquila', 5, 2, 2, 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Aquarius', 4, 2, 3, 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Antlia', 2, 1, 1, 4, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Cetus', 6, 3, 1, 1, NULL, NULL, NULL);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES ('Badar', 2, 4800000000000.5, true, NULL, 590000001.46, 1968, NULL, NULL);
INSERT INTO public.sun VALUES ('Alioth', 1, 4500000000000.5, false, NULL, 145000004.69, 1940, NULL, NULL);
INSERT INTO public.sun VALUES ('Castor', 3, 2800000000000.5, true, NULL, 275000004.12, 1868, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 3, true);


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
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


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
-- Name: star star_sun_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_sun_id_fkey FOREIGN KEY (sun_id) REFERENCES public.sun(sun_id);


--
-- PostgreSQL database dump complete
--

