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
-- Name: extra_galaxy_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra_galaxy_info (
    resource character varying(100) NOT NULL,
    extra_galaxy_info_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.extra_galaxy_info OWNER TO freecodecamp;

--
-- Name: extra_galaxy_info_extra_galaxy_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_galaxy_info_extra_galaxy_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_galaxy_info_extra_galaxy_info_id_seq OWNER TO freecodecamp;

--
-- Name: extra_galaxy_info_extra_galaxy_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_galaxy_info_extra_galaxy_info_id_seq OWNED BY public.extra_galaxy_info.extra_galaxy_info_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    mass_in_kpc integer,
    size_in_kpc numeric(5,2),
    has_life boolean,
    is_spherical boolean
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
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    mass_in_kpc integer,
    size_in_kpc numeric(5,2),
    has_life boolean,
    is_spherical boolean,
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
    description text,
    age_in_millions_of_years integer,
    mass_in_kpc integer,
    size_in_kpc numeric(5,2),
    has_life boolean,
    is_spherical boolean,
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
    description text,
    age_in_millions_of_years integer,
    mass_in_kpc integer,
    size_in_kpc numeric(5,2),
    has_life boolean,
    is_spherical boolean,
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
-- Name: extra_galaxy_info extra_galaxy_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_galaxy_info ALTER COLUMN extra_galaxy_info_id SET DEFAULT nextval('public.extra_galaxy_info_extra_galaxy_info_id_seq'::regclass);


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
-- Data for Name: extra_galaxy_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra_galaxy_info VALUES ('www.google.com', 1, 'Google');
INSERT INTO public.extra_galaxy_info VALUES ('www.wikipedia.com', 2, 'Encyclopedia');
INSERT INTO public.extra_galaxy_info VALUES ('www.youtube.com', 3, 'Youtube');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way.', 152000, 765, 46.56, false, true);
INSERT INTO public.galaxy VALUES (3, 'Cartwheel', 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way.', 152000, 765, 46.56, false, true);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way.', 152000, 765, 46.56, false, true);
INSERT INTO public.galaxy VALUES (5, 'Cigar', 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way.', 152000, 765, 46.56, false, true);
INSERT INTO public.galaxy VALUES (6, 'Barred Spiral', 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way.', 152000, 765, 46.56, false, true);
INSERT INTO public.galaxy VALUES (7, 'Fireworks', 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way.', 152000, 765, 46.56, false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Callisto', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 1);
INSERT INTO public.moon VALUES (2, 'Enceladus', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 2);
INSERT INTO public.moon VALUES (3, 'Ganymede', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 3);
INSERT INTO public.moon VALUES (4, 'Beaver', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 4);
INSERT INTO public.moon VALUES (5, 'Dione', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 5);
INSERT INTO public.moon VALUES (6, 'Tethys', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 6);
INSERT INTO public.moon VALUES (7, 'Lapetus', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 8);
INSERT INTO public.moon VALUES (8, 'Lo', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 9);
INSERT INTO public.moon VALUES (9, 'Mimas', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 10);
INSERT INTO public.moon VALUES (10, 'Pink', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 11);
INSERT INTO public.moon VALUES (11, 'Rhea', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 12);
INSERT INTO public.moon VALUES (12, 'Strawberry', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 13);
INSERT INTO public.moon VALUES (13, 'Titan', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 1);
INSERT INTO public.moon VALUES (14, 'Wolf', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 2);
INSERT INTO public.moon VALUES (15, 'Worm', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 3);
INSERT INTO public.moon VALUES (16, 'Amalthea', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 4);
INSERT INTO public.moon VALUES (17, 'Ariel', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 5);
INSERT INTO public.moon VALUES (18, 'Atlas', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 6);
INSERT INTO public.moon VALUES (19, 'Flower', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 8);
INSERT INTO public.moon VALUES (20, 'Europa', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 9);
INSERT INTO public.moon VALUES (21, 'Harvest', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 6);
INSERT INTO public.planet VALUES (8, 'Uranus', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 6);
INSERT INTO public.planet VALUES (9, 'Neptune', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 5);
INSERT INTO public.planet VALUES (10, 'New Planet 1', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 4);
INSERT INTO public.planet VALUES (11, 'New Planet 2', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 3);
INSERT INTO public.planet VALUES (12, 'New Planet 3', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 2);
INSERT INTO public.planet VALUES (13, 'New Planet 4', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Arcturus', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 1);
INSERT INTO public.star VALUES (2, 'Achernar', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 3);
INSERT INTO public.star VALUES (3, 'Adhara', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 4);
INSERT INTO public.star VALUES (4, 'Altair', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 5);
INSERT INTO public.star VALUES (5, 'Orion', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 6);
INSERT INTO public.star VALUES (6, 'Sirius', 'Arcturus is the brightest star in the northern constellation of Boötes.', 152000, 765, 46.56, false, true, 7);


--
-- Name: extra_galaxy_info_extra_galaxy_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_galaxy_info_extra_galaxy_info_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: extra_galaxy_info extra_galaxy_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_galaxy_info
    ADD CONSTRAINT extra_galaxy_info_pkey PRIMARY KEY (extra_galaxy_info_id);


--
-- Name: extra_galaxy_info extra_galaxy_info_resource_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_galaxy_info
    ADD CONSTRAINT extra_galaxy_info_resource_key UNIQUE (resource);


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

