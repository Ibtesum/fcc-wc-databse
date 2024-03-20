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
    round character varying(20) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (72, 2018, 'Final', 4, 2, 229, 231);
INSERT INTO public.games VALUES (73, 2018, 'Third Place', 2, 0, 230, 232);
INSERT INTO public.games VALUES (74, 2018, 'Semi-Final', 2, 1, 231, 232);
INSERT INTO public.games VALUES (75, 2018, 'Semi-Final', 1, 0, 229, 230);
INSERT INTO public.games VALUES (76, 2018, 'Quarter-Final', 3, 2, 231, 235);
INSERT INTO public.games VALUES (77, 2018, 'Quarter-Final', 2, 0, 232, 233);
INSERT INTO public.games VALUES (78, 2018, 'Quarter-Final', 2, 1, 230, 234);
INSERT INTO public.games VALUES (79, 2018, 'Quarter-Final', 2, 0, 229, 236);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 2, 1, 232, 240);
INSERT INTO public.games VALUES (81, 2018, 'Eighth-Final', 1, 0, 233, 242);
INSERT INTO public.games VALUES (82, 2018, 'Eighth-Final', 3, 2, 230, 243);
INSERT INTO public.games VALUES (83, 2018, 'Eighth-Final', 2, 0, 234, 244);
INSERT INTO public.games VALUES (84, 2018, 'Eighth-Final', 2, 1, 231, 245);
INSERT INTO public.games VALUES (85, 2018, 'Eighth-Final', 2, 1, 235, 246);
INSERT INTO public.games VALUES (86, 2018, 'Eighth-Final', 2, 1, 236, 247);
INSERT INTO public.games VALUES (87, 2018, 'Eighth-Final', 4, 3, 229, 239);
INSERT INTO public.games VALUES (88, 2014, 'Final', 1, 0, 237, 239);
INSERT INTO public.games VALUES (89, 2014, 'Third Place', 3, 0, 238, 234);
INSERT INTO public.games VALUES (90, 2014, 'Semi-Final', 1, 0, 239, 238);
INSERT INTO public.games VALUES (91, 2014, 'Semi-Final', 7, 1, 237, 234);
INSERT INTO public.games VALUES (92, 2014, 'Quarter-Final', 1, 0, 238, 241);
INSERT INTO public.games VALUES (93, 2014, 'Quarter-Final', 1, 0, 239, 230);
INSERT INTO public.games VALUES (94, 2014, 'Quarter-Final', 2, 1, 234, 240);
INSERT INTO public.games VALUES (95, 2014, 'Quarter-Final', 1, 0, 237, 229);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 2, 1, 234, 248);
INSERT INTO public.games VALUES (97, 2014, 'Eighth-Final', 2, 0, 240, 236);
INSERT INTO public.games VALUES (98, 2014, 'Eighth-Final', 2, 0, 229, 249);
INSERT INTO public.games VALUES (99, 2014, 'Eighth-Final', 2, 1, 237, 250);
INSERT INTO public.games VALUES (100, 2014, 'Eighth-Final', 2, 1, 238, 244);
INSERT INTO public.games VALUES (101, 2014, 'Eighth-Final', 2, 1, 241, 251);
INSERT INTO public.games VALUES (102, 2014, 'Eighth-Final', 1, 0, 239, 242);
INSERT INTO public.games VALUES (103, 2014, 'Eighth-Final', 2, 1, 230, 252);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (229, 'France');
INSERT INTO public.teams VALUES (230, 'Belgium');
INSERT INTO public.teams VALUES (231, 'Croatia');
INSERT INTO public.teams VALUES (232, 'England');
INSERT INTO public.teams VALUES (233, 'Sweden');
INSERT INTO public.teams VALUES (234, 'Brazil');
INSERT INTO public.teams VALUES (235, 'Russia');
INSERT INTO public.teams VALUES (236, 'Uruguay');
INSERT INTO public.teams VALUES (237, 'Germany');
INSERT INTO public.teams VALUES (238, 'Netherlands');
INSERT INTO public.teams VALUES (239, 'Argentina');
INSERT INTO public.teams VALUES (240, 'Colombia');
INSERT INTO public.teams VALUES (241, 'Costa Rica');
INSERT INTO public.teams VALUES (242, 'Switzerland');
INSERT INTO public.teams VALUES (243, 'Japan');
INSERT INTO public.teams VALUES (244, 'Mexico');
INSERT INTO public.teams VALUES (245, 'Denmark');
INSERT INTO public.teams VALUES (246, 'Spain');
INSERT INTO public.teams VALUES (247, 'Portugal');
INSERT INTO public.teams VALUES (248, 'Chile');
INSERT INTO public.teams VALUES (249, 'Nigeria');
INSERT INTO public.teams VALUES (250, 'Algeria');
INSERT INTO public.teams VALUES (251, 'Greece');
INSERT INTO public.teams VALUES (252, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 103, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 252, true);


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

