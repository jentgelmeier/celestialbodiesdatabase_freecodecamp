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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_of_guesses integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (21, 8, 'Jason');
INSERT INTO public.games VALUES (23, 12, 'Jason');
INSERT INTO public.games VALUES (25, 790, 'user_1673989015577');
INSERT INTO public.games VALUES (26, 820, 'user_1673989015577');
INSERT INTO public.games VALUES (28, 130, 'user_1673989015576');
INSERT INTO public.games VALUES (29, 75, 'user_1673989015576');
INSERT INTO public.games VALUES (30, 552, 'user_1673989015577');
INSERT INTO public.games VALUES (31, 678, 'user_1673989015577');
INSERT INTO public.games VALUES (32, 835, 'user_1673989015577');
INSERT INTO public.games VALUES (34, 645, 'user_1673989081361');
INSERT INTO public.games VALUES (35, 378, 'user_1673989081361');
INSERT INTO public.games VALUES (37, 872, 'user_1673989081360');
INSERT INTO public.games VALUES (38, 549, 'user_1673989081360');
INSERT INTO public.games VALUES (39, 995, 'user_1673989081361');
INSERT INTO public.games VALUES (40, 694, 'user_1673989081361');
INSERT INTO public.games VALUES (41, 562, 'user_1673989081361');
INSERT INTO public.games VALUES (43, 407, 'user_1673989096155');
INSERT INTO public.games VALUES (44, 561, 'user_1673989096155');
INSERT INTO public.games VALUES (46, 748, 'user_1673989096154');
INSERT INTO public.games VALUES (47, 693, 'user_1673989096154');
INSERT INTO public.games VALUES (48, 144, 'user_1673989096155');
INSERT INTO public.games VALUES (49, 657, 'user_1673989096155');
INSERT INTO public.games VALUES (50, 349, 'user_1673989096155');
INSERT INTO public.games VALUES (52, 78, 'user_1673989126490');
INSERT INTO public.games VALUES (53, 374, 'user_1673989126490');
INSERT INTO public.games VALUES (55, 29, 'user_1673989126489');
INSERT INTO public.games VALUES (56, 680, 'user_1673989126489');
INSERT INTO public.games VALUES (57, 90, 'user_1673989126490');
INSERT INTO public.games VALUES (58, 34, 'user_1673989126490');
INSERT INTO public.games VALUES (59, 286, 'user_1673989126490');
INSERT INTO public.games VALUES (61, 738, 'user_1673989204476');
INSERT INTO public.games VALUES (62, 213, 'user_1673989204476');
INSERT INTO public.games VALUES (64, 972, 'user_1673989204475');
INSERT INTO public.games VALUES (65, 660, 'user_1673989204475');
INSERT INTO public.games VALUES (66, 545, 'user_1673989204476');
INSERT INTO public.games VALUES (67, 788, 'user_1673989204476');
INSERT INTO public.games VALUES (68, 729, 'user_1673989204476');
INSERT INTO public.games VALUES (70, 389, 'user_1673989243433');
INSERT INTO public.games VALUES (71, 235, 'user_1673989243433');
INSERT INTO public.games VALUES (73, 484, 'user_1673989243432');
INSERT INTO public.games VALUES (74, 858, 'user_1673989243432');
INSERT INTO public.games VALUES (75, 643, 'user_1673989243433');
INSERT INTO public.games VALUES (76, 820, 'user_1673989243433');
INSERT INTO public.games VALUES (77, 867, 'user_1673989243433');
INSERT INTO public.games VALUES (79, 998, 'user_1673989336630');
INSERT INTO public.games VALUES (80, 731, 'user_1673989336630');
INSERT INTO public.games VALUES (82, 522, 'user_1673989336629');
INSERT INTO public.games VALUES (83, 306, 'user_1673989336629');
INSERT INTO public.games VALUES (84, 883, 'user_1673989336630');
INSERT INTO public.games VALUES (85, 167, 'user_1673989336630');
INSERT INTO public.games VALUES (86, 802, 'user_1673989336630');
INSERT INTO public.games VALUES (88, 184, 'user_1673989361556');
INSERT INTO public.games VALUES (89, 775, 'user_1673989361556');
INSERT INTO public.games VALUES (91, 994, 'user_1673989361555');
INSERT INTO public.games VALUES (92, 118, 'user_1673989361555');
INSERT INTO public.games VALUES (93, 672, 'user_1673989361556');
INSERT INTO public.games VALUES (94, 544, 'user_1673989361556');
INSERT INTO public.games VALUES (95, 821, 'user_1673989361556');
INSERT INTO public.games VALUES (97, 831, 'user_1673989479348');
INSERT INTO public.games VALUES (98, 778, 'user_1673989479348');
INSERT INTO public.games VALUES (100, 357, 'user_1673989479347');
INSERT INTO public.games VALUES (101, 8, 'user_1673989479347');
INSERT INTO public.games VALUES (102, 233, 'user_1673989479348');
INSERT INTO public.games VALUES (103, 791, 'user_1673989479348');
INSERT INTO public.games VALUES (104, 829, 'user_1673989479348');
INSERT INTO public.games VALUES (106, 441, 'user_1673989613502');
INSERT INTO public.games VALUES (107, 522, 'user_1673989613502');
INSERT INTO public.games VALUES (109, 629, 'user_1673989613501');
INSERT INTO public.games VALUES (110, 970, 'user_1673989613501');
INSERT INTO public.games VALUES (111, 354, 'user_1673989613502');
INSERT INTO public.games VALUES (112, 714, 'user_1673989613502');
INSERT INTO public.games VALUES (113, 583, 'user_1673989613502');
INSERT INTO public.games VALUES (115, 14, 'user_1673989651957');
INSERT INTO public.games VALUES (116, 621, 'user_1673989651957');
INSERT INTO public.games VALUES (118, 216, 'user_1673989651956');
INSERT INTO public.games VALUES (119, 762, 'user_1673989651956');
INSERT INTO public.games VALUES (120, 521, 'user_1673989651957');
INSERT INTO public.games VALUES (121, 409, 'user_1673989651957');
INSERT INTO public.games VALUES (122, 66, 'user_1673989651957');
INSERT INTO public.games VALUES (124, 876, 'user_1673989693487');
INSERT INTO public.games VALUES (125, 433, 'user_1673989693487');
INSERT INTO public.games VALUES (127, 922, 'user_1673989693486');
INSERT INTO public.games VALUES (128, 363, 'user_1673989693486');
INSERT INTO public.games VALUES (129, 874, 'user_1673989693487');
INSERT INTO public.games VALUES (130, 177, 'user_1673989693487');
INSERT INTO public.games VALUES (131, 146, 'user_1673989693487');
INSERT INTO public.games VALUES (133, 75, 'user_1673989740298');
INSERT INTO public.games VALUES (134, 322, 'user_1673989740298');
INSERT INTO public.games VALUES (136, 285, 'user_1673989740297');
INSERT INTO public.games VALUES (137, 896, 'user_1673989740297');
INSERT INTO public.games VALUES (138, 909, 'user_1673989740298');
INSERT INTO public.games VALUES (139, 34, 'user_1673989740298');
INSERT INTO public.games VALUES (140, 989, 'user_1673989740298');
INSERT INTO public.games VALUES (141, 10, 'Jason');
INSERT INTO public.games VALUES (143, 163, 'user_1673989789750');
INSERT INTO public.games VALUES (144, 856, 'user_1673989789750');
INSERT INTO public.games VALUES (146, 566, 'user_1673989789749');
INSERT INTO public.games VALUES (147, 220, 'user_1673989789749');
INSERT INTO public.games VALUES (148, 197, 'user_1673989789750');
INSERT INTO public.games VALUES (149, 168, 'user_1673989789750');
INSERT INTO public.games VALUES (150, 349, 'user_1673989789750');
INSERT INTO public.games VALUES (152, 712, 'user_1673989807289');
INSERT INTO public.games VALUES (153, 39, 'user_1673989807289');
INSERT INTO public.games VALUES (155, 461, 'user_1673989807288');
INSERT INTO public.games VALUES (156, 252, 'user_1673989807288');
INSERT INTO public.games VALUES (157, 18, 'user_1673989807289');
INSERT INTO public.games VALUES (158, 921, 'user_1673989807289');
INSERT INTO public.games VALUES (159, 668, 'user_1673989807289');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 159, true);


--
-- Name: games games_game_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_game_id_key UNIQUE (game_id);


--
-- PostgreSQL database dump complete
--

