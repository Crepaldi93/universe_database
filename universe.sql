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
-- Name: element; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.element (
    element_id integer NOT NULL,
    name character varying(40),
    atomic_number integer NOT NULL
);


ALTER TABLE public.element OWNER TO freecodecamp;

--
-- Name: elements_element_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.elements_element_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.elements_element_id_seq OWNER TO freecodecamp;

--
-- Name: elements_element_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.elements_element_id_seq OWNED BY public.element.element_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    description text,
    constellation text,
    apparent_magnitude numeric(3,2) NOT NULL
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
    name character varying(40),
    age_in_millions_of_years numeric(5,1),
    distance_from_earth numeric(10,1),
    planet_id integer NOT NULL
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
    name character varying(40),
    age_in_millions_of_years numeric(5,1),
    distance_from_earth numeric(10,1),
    number_of_moons integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL,
    atmospheres_main_element text
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
    name character varying(40),
    age_in_millions_of_years numeric(5,1),
    distance_from_earth numeric(10,1),
    description text,
    galaxy_id integer NOT NULL
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
-- Name: element element_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.element ALTER COLUMN element_id SET DEFAULT nextval('public.elements_element_id_seq'::regclass);


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
-- Data for Name: element; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.element VALUES (1, 'Nitrogen', 7);
INSERT INTO public.element VALUES (2, 'Oxygen', 8);
INSERT INTO public.element VALUES (3, 'Hydrogen', 1);
INSERT INTO public.element VALUES (4, 'Carbon', 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'This is the galaxy containing the Sun and its Solar System, and therefore Earth', 'Sagittarius', -6.50);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 'Visible only from the southern hemisphere. It is also the brightest patch of nebulosity in the sky', 'Dorado/Mensa', 0.90);
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', 'Visible only from the southern hemisphere', 'Tucana', 2.70);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 'Once called the Great Andromeda Nebula', 'Andromeda', 3.40);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 'Being a diffuse object, its visibility is strongly affected by even small amounts of light pollution', 'Triangulum', 5.70);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'It has been spotted with the naked eye by Stephen Jame OMeara', 'Centaurus', 6.84);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 1', NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'moon 2', NULL, NULL, 7);
INSERT INTO public.moon VALUES (3, 'moon 3', NULL, NULL, 7);
INSERT INTO public.moon VALUES (4, 'moon 4', NULL, NULL, 8);
INSERT INTO public.moon VALUES (5, 'moon 5', NULL, NULL, 8);
INSERT INTO public.moon VALUES (6, 'moon 6', NULL, NULL, 8);
INSERT INTO public.moon VALUES (7, 'moon 7', NULL, NULL, 8);
INSERT INTO public.moon VALUES (8, 'moon 8', NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'moon 9', NULL, NULL, 8);
INSERT INTO public.moon VALUES (10, 'moon 10', NULL, NULL, 8);
INSERT INTO public.moon VALUES (11, 'moon 11', NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'moon 12', NULL, NULL, 6);
INSERT INTO public.moon VALUES (13, 'moon 13', NULL, NULL, 6);
INSERT INTO public.moon VALUES (14, 'moon 14', NULL, NULL, 6);
INSERT INTO public.moon VALUES (15, 'moon 15', NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'moon 16', NULL, NULL, 7);
INSERT INTO public.moon VALUES (17, 'moon 17', NULL, NULL, 6);
INSERT INTO public.moon VALUES (18, 'moon 18', NULL, NULL, 8);
INSERT INTO public.moon VALUES (19, 'moon 19', NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, 'moon 20', NULL, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4543.0, 0.0, 1, 'One of the planets of the solar system', true, true, 1, '1');
INSERT INTO public.planet VALUES (2, 'Mercury', 4503.0, 0.6, 1, 'One of the planets of the solar system', false, true, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', 4503.0, 0.3, 0, 'One of the planets of the solar system', false, true, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 4603.0, 0.5, 2, 'One of the planets of the solar system', false, true, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4603.0, 4.2, 80, 'One of the planets of the solar system', false, true, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 4503.0, 8.5, 83, 'One of the planets of the solar system', false, true, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 4503.0, 18.2, 27, 'One of the planets of the solar system', false, true, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 4503.0, 29.1, 14, 'One of the planets of the solar system', false, true, 1, NULL);
INSERT INTO public.planet VALUES (9, 'planet 9', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (10, 'planet 10', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (11, 'planet 11', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (12, 'planet 12', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4603.0, 148.4, 'Star at the centre of our solar system', 1);
INSERT INTO public.star VALUES (2, 'Alpha Mensae', 6.2, 33.1, 'Brightest Star in the constellation Mensa', 2);
INSERT INTO public.star VALUES (3, 'Antares', 11.0, 550.0, '10th largest star in the Milky Way', 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 10.0, 643.0, '9th largest star in the Milky Way', 1);
INSERT INTO public.star VALUES (5, 'UY Scuti', 5000.0, 5219.0, 'Largest star in the Milky Way', 1);
INSERT INTO public.star VALUES (6, 'VY Canis Majoris', 8.2, 3900.0, '2nd largest star in the Milky Way', 1);


--
-- Name: elements_element_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.elements_element_id_seq', 4, true);


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
-- Name: element elements_atomic_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.element
    ADD CONSTRAINT elements_atomic_number_key UNIQUE (atomic_number);


--
-- Name: element elements_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.element
    ADD CONSTRAINT elements_pkey PRIMARY KEY (element_id);


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

