CREATE TABLE public.games (
    game_id SERIAL PRIMARY KEY NOT NULL,
    year INT NOT NULL,
    round VARCHAR(20) NOT NULL,
    winner_id INT NOT NULL,
    opponent_id INT NOT NULL,
    winner_goals INT NOT NULL,
    opponent_goals INT NOT NULL
);

CREATE TABLE public.teams (
    team_id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(20) NOT NULL UNIQUE
);

ALTER TABLE ONLY games ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);

ALTER TABLE ONLY games ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);
