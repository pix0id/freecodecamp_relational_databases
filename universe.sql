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
-- Name: galactic_federation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galactic_federation (
    galactic_federation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    membership_status boolean NOT NULL
);


ALTER TABLE public.galactic_federation OWNER TO freecodecamp;

--
-- Name: galactic_federation_galactic_federation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galactic_federation_galactic_federation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galactic_federation_galactic_federation_id_seq OWNER TO freecodecamp;

--
-- Name: galactic_federation_galactic_federation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galactic_federation_galactic_federation_id_seq OWNED BY public.galactic_federation.galactic_federation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    num_of_stars integer,
    width_in_lightyears numeric(6,1),
    federation boolean NOT NULL
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
    name character varying(20),
    width_in_km numeric(6,1),
    habitable boolean NOT NULL,
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
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    width_in_km numeric(6,1),
    habitable boolean NOT NULL,
    description text,
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
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    width_in_km numeric(6,1),
    temp integer,
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
-- Name: galactic_federation galactic_federation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_federation ALTER COLUMN galactic_federation_id SET DEFAULT nextval('public.galactic_federation_galactic_federation_id_seq'::regclass);


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
-- Data for Name: galactic_federation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galactic_federation VALUES (1, 'humans', 1, true);
INSERT INTO public.galactic_federation VALUES (2, 'Romunlans', 5, false);
INSERT INTO public.galactic_federation VALUES (3, 'Klingons', 2, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'blip blorp', 10000000, 65432.1, true);
INSERT INTO public.galaxy VALUES (2, 'keplar', 70000000, 65432.1, true);
INSERT INTO public.galaxy VALUES (3, 'Klingon', 80000000, 99999.9, false);
INSERT INTO public.galaxy VALUES (4, 'Nebulon', 74028281, 78623.8, true);
INSERT INTO public.galaxy VALUES (5, 'Triglor', 8272876, 29084.2, false);
INSERT INTO public.galaxy VALUES (6, 'gundam', 832702, 76211.1, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 10', 22000.0, false, 10);
INSERT INTO public.moon VALUES (2, 'moon 9', 12345.0, false, 9);
INSERT INTO public.moon VALUES (3, 'moon 8', 12345.0, false, 8);
INSERT INTO public.moon VALUES (4, 'moon7', 12345.0, true, 7);
INSERT INTO public.moon VALUES (5, 'moon6', 12345.6, true, 6);
INSERT INTO public.moon VALUES (6, 'moon', 22000.0, false, 1);
INSERT INTO public.moon VALUES (7, 'moon 2', 12345.0, false, 2);
INSERT INTO public.moon VALUES (8, 'moon 3', 12345.0, false, 3);
INSERT INTO public.moon VALUES (9, 'moon4', 12345.0, true, 4);
INSERT INTO public.moon VALUES (10, 'moon5', 12345.6, true, 5);
INSERT INTO public.moon VALUES (11, 'moon 3-2', 22000.0, false, 3);
INSERT INTO public.moon VALUES (12, 'moon 2-2', 12345.0, false, 2);
INSERT INTO public.moon VALUES (13, 'moon 1-2', 12345.0, false, 1);
INSERT INTO public.moon VALUES (14, 'moon12', 12345.0, true, 12);
INSERT INTO public.moon VALUES (15, 'moon11', 12345.6, true, 11);
INSERT INTO public.moon VALUES (16, 'moon 8-2', 22000.0, false, 8);
INSERT INTO public.moon VALUES (17, 'moon 7-2', 12345.0, false, 7);
INSERT INTO public.moon VALUES (18, 'moon 6-2', 12345.0, false, 6);
INSERT INTO public.moon VALUES (19, 'moon 5-2', 12345.0, true, 5);
INSERT INTO public.moon VALUES (20, 'moon 4-2', 12345.6, true, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4879.4, false, 'a planet in the solar system', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 12104.0, false, 'a planet in our solar system', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 12742.0, true, 'our home planet', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 6779.0, false, 'a planet in the solar system', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 13982.0, false, 'a planet in our solar system', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 11646.0, false, 'our home planet', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 50742.0, false, 'a planet in the solar system', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 49244.0, false, 'a planet in our solar system', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 1479.8, false, 'not a planet haha', 2);
INSERT INTO public.planet VALUES (10, 'Tattoine', 49244.0, true, 'Just barely habitable', 4);
INSERT INTO public.planet VALUES (11, 'Corn Planet', 50742.0, true, 'Decent planet but everything is on the cob', 1);
INSERT INTO public.planet VALUES (12, 'Enron', 49244.0, true, 'not a planet in our solar system', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 88888.2, 55555, 3);
INSERT INTO public.star VALUES (2, 'sol', 77777.2, 55555, 2);
INSERT INTO public.star VALUES (3, 'son', 99999.9, 7846238, 6);
INSERT INTO public.star VALUES (4, 'sky diamond', 82726.8, 71862, 5);
INSERT INTO public.star VALUES (5, 'day moon', 72827.9, 6789, 4);
INSERT INTO public.star VALUES (6, 'red dwarf', 68275.1, 7392026, 1);


--
-- Name: galactic_federation_galactic_federation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galactic_federation_galactic_federation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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
-- Name: galactic_federation galactic_federation_member_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_federation
    ADD CONSTRAINT galactic_federation_member_name_key UNIQUE (name);


--
-- Name: galactic_federation galactic_federation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_federation
    ADD CONSTRAINT galactic_federation_pkey PRIMARY KEY (galactic_federation_id);


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
-- Name: galactic_federation galactic_federation_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_federation
    ADD CONSTRAINT galactic_federation_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

