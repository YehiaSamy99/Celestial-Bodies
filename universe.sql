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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_holes_bk_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_bk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_bk_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_bk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_bk_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    galaxy_types character varying(20),
    distance_from_earth_in_myl numeric
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
    name character varying(30),
    distance_from_planet integer,
    planet_id integer NOT NULL,
    orbits_times_per_day integer
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
    name character varying(30) NOT NULL,
    is_spherical boolean,
    has_life boolean,
    description text,
    number_of_moons integer,
    star_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    age_in_millions_of_years numeric
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_holes_bk_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 1, 'Gaia BH1');
INSERT INTO public.black_hole VALUES (2, 1, 'Cygnus X-1');
INSERT INTO public.black_hole VALUES (3, 1, 'Gaia BH3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Galaxy with a disk of stars spanning more than 100,00', 'Spiral galaxy', 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'reat spiral galaxy in the constellation Andromeda, the nearest large galaxy.', 'spiral galaxy', 2.54);
INSERT INTO public.galaxy VALUES (3, 'Sagittarius', 'A proposed dwarf galaxy known as the Canis Major Overdensity ', 'Dwarf galaxy', 0.070);
INSERT INTO public.galaxy VALUES (4, 'Sculptor Galaxy', 'NGC 253 has been observed with the naked eye by Timo Karhula', '', 12);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'Centaurus A has been spotted with the naked eye by Stephen James O Meara', '', 13.7);
INSERT INTO public.galaxy VALUES (6, 'Triangulum Galaxy', 'Being a diffuse object, its visibility is strongly affected by even small amounts of light pollution', '', 2.9);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earths Moon', 384400, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Io', NULL, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', NULL, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', NULL, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Triton', NULL, 8, NULL);
INSERT INTO public.moon VALUES (9, 'Charon', NULL, 10, NULL);
INSERT INTO public.moon VALUES (10, 'Nix', NULL, 10, NULL);
INSERT INTO public.moon VALUES (11, 'Hydra', NULL, 10, NULL);
INSERT INTO public.moon VALUES (12, 'Kerberos', NULL, 10, NULL);
INSERT INTO public.moon VALUES (13, 'Styx', NULL, 10, NULL);
INSERT INTO public.moon VALUES (14, 'Namaka', NULL, 11, NULL);
INSERT INTO public.moon VALUES (15, 'Hiiaka', NULL, 11, NULL);
INSERT INTO public.moon VALUES (16, 'MK 2', NULL, 12, NULL);
INSERT INTO public.moon VALUES (17, 'Nereid', NULL, 8, NULL);
INSERT INTO public.moon VALUES (18, 'Thalassa', NULL, 8, NULL);
INSERT INTO public.moon VALUES (19, 'Despina', NULL, 8, NULL);
INSERT INTO public.moon VALUES (20, 'Galatea', NULL, 8, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', false, true, 'Earth is the third planet from the Sun and the only astronomical object known to harbor life', 1, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', true, false, 'The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth’s Moon', 0, 1);
INSERT INTO public.planet VALUES (3, 'Venus', true, false, 'Venus is the second planet from the Sun, and Earths closest planetary neighbor', 0, 1);
INSERT INTO public.planet VALUES (4, 'Mars', true, false, 'the fourth planet from the Sun – is a dusty, cold, desert world with a very thin atmosphere', 2, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, false, 'Jupiter is the largest planet in our solar system – if it were a hollow shell, 1,000 Earths could fit inside', 4, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', true, false, 'Saturn is the sixth planet from the Sun, and the second-largest planet in our solar system', 146, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, false, 'Uranus is the seventh planet from the Sun, and it has the third largest diameter of planets in our solar system', 28, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, false, 'Neptune is the eighth and most distant planet in our solar system Dark, cold, and whipped by supersonic winds, ice giant', 16, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', false, false, 'Dwarf planet Ceres is the largest object in the asteroid belt between Mars and Jupiter', 0, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', true, false, 'Pluto was long considered our solar system’s ninth planet', 5, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', true, false, 'Haumea was nicknamed Santa by one discovery team and is one of the fastest rotating large objects in our solar system', 2, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', false, false, 'Makemake is slightly smaller than Pluto, and is the second-brightest object in the Kuiper Belt', 1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'The Sun is the star at the heart of our solar system', 4.5);
INSERT INTO public.star VALUES (2, 'Sirius A', 1, 'is a A-type main-sequence star located 8.6 light years from Sun in Canis Major', 250);
INSERT INTO public.star VALUES (3, 'Canopus', 1, 'is a White Bright Giant living 310 light years from Earth in the far western part of the constellation Carina', 10);
INSERT INTO public.star VALUES (4, 'Arcturus', 1, 'Arcturus is a friendly star who loves to make friends and is good friends But sometimes, she can get emotional', 7.105);
INSERT INTO public.star VALUES (5, 'Rigil Kentauru', 1, 'officially known as Rigil Kentaurus is the main star of the trinary system of Alpha Centauri', 5);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 1, 'Classified as a red supergiant of spectral type M1-2, Betelgeuse is one of the largest stars visible to the naked eye', 10.01);


--
-- Name: black_holes_bk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_bk_id_seq', 3, true);


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
-- Name: black_hole black_hole_bk_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_bk_id_key UNIQUE (black_hole_id);


--
-- Name: black_hole black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: black_hole black_holes_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_holes_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

