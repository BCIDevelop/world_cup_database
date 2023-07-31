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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(40) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (104, 2018, 'Final', 190, 191, 4, 2);
INSERT INTO public.games VALUES (105, 2018, 'Third Place', 192, 193, 2, 0);
INSERT INTO public.games VALUES (106, 2018, 'Semi-Final', 191, 193, 2, 1);
INSERT INTO public.games VALUES (107, 2018, 'Semi-Final', 190, 192, 1, 0);
INSERT INTO public.games VALUES (108, 2018, 'Quarter-Final', 191, 194, 3, 2);
INSERT INTO public.games VALUES (109, 2018, 'Quarter-Final', 193, 195, 2, 0);
INSERT INTO public.games VALUES (110, 2018, 'Quarter-Final', 192, 196, 2, 1);
INSERT INTO public.games VALUES (111, 2018, 'Quarter-Final', 190, 197, 2, 0);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 193, 198, 2, 1);
INSERT INTO public.games VALUES (113, 2018, 'Eighth-Final', 195, 199, 1, 0);
INSERT INTO public.games VALUES (114, 2018, 'Eighth-Final', 192, 200, 3, 2);
INSERT INTO public.games VALUES (115, 2018, 'Eighth-Final', 196, 201, 2, 0);
INSERT INTO public.games VALUES (116, 2018, 'Eighth-Final', 191, 202, 2, 1);
INSERT INTO public.games VALUES (117, 2018, 'Eighth-Final', 194, 203, 2, 1);
INSERT INTO public.games VALUES (118, 2018, 'Eighth-Final', 197, 204, 2, 1);
INSERT INTO public.games VALUES (119, 2018, 'Eighth-Final', 190, 205, 4, 3);
INSERT INTO public.games VALUES (120, 2014, 'Final', 206, 205, 1, 0);
INSERT INTO public.games VALUES (121, 2014, 'Third Place', 207, 196, 3, 0);
INSERT INTO public.games VALUES (122, 2014, 'Semi-Final', 205, 207, 1, 0);
INSERT INTO public.games VALUES (123, 2014, 'Semi-Final', 206, 196, 7, 1);
INSERT INTO public.games VALUES (124, 2014, 'Quarter-Final', 207, 208, 1, 0);
INSERT INTO public.games VALUES (125, 2014, 'Quarter-Final', 205, 192, 1, 0);
INSERT INTO public.games VALUES (126, 2014, 'Quarter-Final', 196, 198, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Quarter-Final', 206, 190, 1, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 196, 209, 2, 1);
INSERT INTO public.games VALUES (129, 2014, 'Eighth-Final', 198, 197, 2, 0);
INSERT INTO public.games VALUES (130, 2014, 'Eighth-Final', 190, 210, 2, 0);
INSERT INTO public.games VALUES (131, 2014, 'Eighth-Final', 206, 211, 2, 1);
INSERT INTO public.games VALUES (132, 2014, 'Eighth-Final', 207, 201, 2, 1);
INSERT INTO public.games VALUES (133, 2014, 'Eighth-Final', 208, 212, 2, 1);
INSERT INTO public.games VALUES (134, 2014, 'Eighth-Final', 205, 199, 1, 0);
INSERT INTO public.games VALUES (135, 2014, 'Eighth-Final', 192, 213, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 190);
INSERT INTO public.teams VALUES ('Croatia', 191);
INSERT INTO public.teams VALUES ('Belgium', 192);
INSERT INTO public.teams VALUES ('England', 193);
INSERT INTO public.teams VALUES ('Russia', 194);
INSERT INTO public.teams VALUES ('Sweden', 195);
INSERT INTO public.teams VALUES ('Brazil', 196);
INSERT INTO public.teams VALUES ('Uruguay', 197);
INSERT INTO public.teams VALUES ('Colombia', 198);
INSERT INTO public.teams VALUES ('Switzerland', 199);
INSERT INTO public.teams VALUES ('Japan', 200);
INSERT INTO public.teams VALUES ('Mexico', 201);
INSERT INTO public.teams VALUES ('Denmark', 202);
INSERT INTO public.teams VALUES ('Spain', 203);
INSERT INTO public.teams VALUES ('Portugal', 204);
INSERT INTO public.teams VALUES ('Argentina', 205);
INSERT INTO public.teams VALUES ('Germany', 206);
INSERT INTO public.teams VALUES ('Netherlands', 207);
INSERT INTO public.teams VALUES ('Costa Rica', 208);
INSERT INTO public.teams VALUES ('Chile', 209);
INSERT INTO public.teams VALUES ('Nigeria', 210);
INSERT INTO public.teams VALUES ('Algeria', 211);
INSERT INTO public.teams VALUES ('Greece', 212);
INSERT INTO public.teams VALUES ('United States', 213);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 135, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 213, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

