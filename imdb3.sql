CLEAR SCR


DROP TABLE movie                    CASCADE CONSTRAINTS;
DROP TABLE tv_show                  CASCADE CONSTRAINTS;
DROP TABLE tv_episode               CASCADE CONSTRAINTS;


DROP TABLE director                 CASCADE CONSTRAINTS;
DROP TABLE director_directs_mov     CASCADE CONSTRAINTS;
DROP TABLE director_directs_tv      CASCADE CONSTRAINTS;


DROP TABLE actor                    CASCADE CONSTRAINTS;
DROP TABLE actor_acts_for_mov       CASCADE CONSTRAINTS;
DROP TABLE actor_acts_for_tv        CASCADE CONSTRAINTS;


DROP TABLE writer                   CASCADE CONSTRAINTS;
DROP TABLE writer_writes_mov        CASCADE CONSTRAINTS;
DROP TABLE writer_writes_tv         CASCADE CONSTRAINTS;


DROP TABLE awards                   CASCADE CONSTRAINTS;
DROP TABLE award_giver              CASCADE CONSTRAINTS;


DROP TABLE movie_review             CASCADE CONSTRAINTS;
DROP TABLE show_review              CASCADE CONSTRAINTS;
DROP TABLE tvep_review              CASCADE CONSTRAINTS;


DROP TABLE movie_genre              CASCADE CONSTRAINTS;
DROP TABLE show_genre               CASCADE CONSTRAINTS;


-- comment this if you want to see table drops
CLEAR SCR


CREATE TABLE movie
(
   MTitle          VARCHAR2    (265)    CONSTRAINT MTitle    NOT NULL,
   MDescription    VARCHAR2    (2048),
   MStudio         VARCHAR2    (32),
   MState          VARCHAR2    (16),
   MDetails        VARCHAR2    (2048),
   MRating         NUMBER, --     (2, 2),
   MTagline        VARCHAR2    (64),
   CONSTRAINT movie_pkey PRIMARY KEY (MTitle)
);


CREATE TABLE tv_show
(
   TVTitle         VARCHAR2    (265)    CONSTRAINT TVTitle    NOT NULL,
   TVDescription   VARCHAR2    (2048),
   TVStudio        VARCHAR2    (32),
   TVState         VARCHAR2    (16),
   TVDetails       VARCHAR2    (2048),
   TVRating        NUMBER, --      (2, 2),
   TVTagline       VARCHAR2    (64),
   CONSTRAINT show_pkey PRIMARY KEY (TVTitle)
);


CREATE TABLE tv_episode
(
   EP_Title        VARCHAR2    (265)    CONSTRAINT EP_Title    NOT NULL,
   EP_Season       VARCHAR2    (1024),
   EP_Duration     VARCHAR2    (32),
   EP_Rating       NUMBER, --      (2, 2),
   ShowTitle       VARCHAR2    (265),
   CONSTRAINT tv_episode_pkey PRIMARY KEY (EP_Title)
);






CREATE TABLE director
(
   DName           VARCHAR2    (32)    CONSTRAINT DName    NOT NULL,
   DBithDay        DATE,
   DBithLoc        VARCHAR2    (64),
   DPhoto          VARCHAR2    (512), -- cdn link
   CONSTRAINT director_pkey PRIMARY KEY (DName)
);


CREATE TABLE director_directs_mov
(
   MovieTitle      VARCHAR2    (265),
   MovieDirName    VARCHAR2    (32),
   CONSTRAINT director_directs_mov_pkey PRIMARY KEY (MovieTitle, MovieDirName)
);


CREATE TABLE director_directs_tv
(
   ShowTitle       VARCHAR2    (265),
   ShowDirName     VARCHAR2    (32),
   CONSTRAINT director_directs_tv_pkey PRIMARY KEY (ShowTitle, ShowDirName)
);






CREATE TABLE actor
(
   AName           VARCHAR2    (32)    CONSTRAINT AName    NOT NULL,
   ABithDay        DATE,
   ABithLoc        VARCHAR2    (64),
   APhoto          VARCHAR2    (512), -- cdn link
   CONSTRAINT actor_pkey PRIMARY KEY (AName)
);


CREATE TABLE actor_acts_for_mov
(
   MovieTitle      VARCHAR2    (265),
   MovieActName    VARCHAR2    (32),
   CONSTRAINT actor_acts_for_mov_pkey PRIMARY KEY (MovieTitle, MovieActName)
);


CREATE TABLE actor_acts_for_tv
(
   ShowTitle       VARCHAR2    (265),
   ShowActName     VARCHAR2    (32),
   CONSTRAINT actor_acts_for_tv_pkey PRIMARY KEY (ShowTitle, ShowActName)
);






CREATE TABLE writer
(
   WName           VARCHAR2    (32)    CONSTRAINT WName    NOT NULL,
   WBithDay        DATE,
   WBithLoc        VARCHAR2    (64),
   WPhoto          VARCHAR2    (512), -- cdn link
   CONSTRAINT writer_pkey PRIMARY KEY (WName)
);


CREATE TABLE writer_writes_mov
(
   MovieTitle      VARCHAR2    (265),
   MovieWrtName    VARCHAR2    (32),
   CONSTRAINT writer_writes_mov_pkey PRIMARY KEY (MovieTitle, MovieWrtName)
);


CREATE TABLE writer_writes_tv
(
   ShowTitle       VARCHAR2    (265),
   ShowWrtName     VARCHAR2    (32),
   CONSTRAINT writer_writes_tv_pkey PRIMARY KEY (ShowTitle, ShowWrtName)
);






CREATE TABLE awards
(
   AwrName         VARCHAR2    (16)    CONSTRAINT AwrName    NOT NULL,
   AwrYear         DATE                CONSTRAINT AwrYear    NOT NULL,
   AwrType         VARCHAR2    (16),
   AwrGenre        VARCHAR2    (16),
   Awr_TV_Award    VARCHAR2    (32),
   Awr_Mov_Award   VARCHAR2    (32),
   CONSTRAINT award_name_year PRIMARY KEY (AwrName, AwrYear)
);


CREATE TABLE award_giver
(
  AwrYear      DATE,
  AwrName      VARCHAR2    (16),
  AwrGiver     VARCHAR2    (32),
   CONSTRAINT award_giver_pkey PRIMARY KEY (AwrName, AwrYear)
);


CREATE TABLE movie_review
(
   MR_User         VARCHAR2    (32)    CONSTRAINT MR_User  NOT NULL,
   MR_Rating       NUMBER,
   MR_Title        VARCHAR2    (265),
   MR_Body         VARCHAR2    (2048),
   MR_Date         DATE,
   CONSTRAINT movie_review_mr_user PRIMARY KEY (MR_User)
);


CREATE TABLE show_review
(
   S_User         VARCHAR2    (32)    CONSTRAINT S_User  NOT NULL,
   S_Rating       NUMBER,
   S_Title        VARCHAR2    (265),
   S_Body         VARCHAR2    (2048),
   S_Date         DATE,
   CONSTRAINT show_review_s_user PRIMARY KEY (S_User)
);


CREATE TABLE tvep_review
(
   TVep_User         VARCHAR2    (32)    CONSTRAINT TVep_User  NOT NULL,
   TVep_Rating       NUMBER,
   TVep_Title        VARCHAR2    (265),
   TVep_Body         VARCHAR2    (2048),
   TVep_Date         DATE,
   TVep_Season       NUMBER,
   TVep_Episode      VARCHAR2    (32),
   CONSTRAINT tvep_review_tvep_user PRIMARY KEY (TVep_User)
);


CREATE TABLE movie_genre
(
   MovieTitle           VARCHAR2    (265),
   MovieGenre           VARCHAR2    (16),
   CONSTRAINT movie_genre_pkey PRIMARY KEY (MovieTitle, MovieGenre)
);


CREATE TABLE show_genre
(
   ShowTitle   VARCHAR2    (265),
   ShowGenre   VARCHAR2    (16),
   CONSTRAINT show_genre_pkey PRIMARY KEY (ShowTitle, ShowGenre)
);


-- add data

@C:\sql\imdb_d.sql   -- Main Data
-- @c:\sql\imdb_md.sql  -- Google Doc

-- add contraints

ALTER TABLE tv_episode
ADD CONSTRAINT tv_episode_fk FOREIGN KEY(EP_Title)
REFERENCES tv_show(TVTitle);


ALTER TABLE director_directs_mov
ADD CONSTRAINT director_mov_title_fk FOREIGN KEY(MovieTitle)
REFERENCES movie(MTitle);


ALTER TABLE director_directs_mov
ADD CONSTRAINT director_mov_name_fk FOREIGN KEY(MovieDirName)
REFERENCES director(DName);


ALTER TABLE director_directs_tv
ADD CONSTRAINT director_tv_title_fk FOREIGN KEY(ShowTitle)
REFERENCES tv_show(TVTitle);


ALTER TABLE director_directs_tv
ADD CONSTRAINT director_tv_name_fk FOREIGN KEY(ShowDirName)
REFERENCES director(DName);


ALTER TABLE actor_acts_for_mov
ADD CONSTRAINT actor_mov_title_fk FOREIGN KEY(MovieTitle)
REFERENCES movie(MTitle);


ALTER TABLE actor_acts_for_mov
ADD CONSTRAINT actor_mov_name_fk FOREIGN KEY(MovieActName)
REFERENCES actor(AName);


ALTER TABLE actor_acts_for_tv
ADD CONSTRAINT actor_tv_title_fk FOREIGN KEY(ShowTitle)
REFERENCES tv_show(TVTitle);


ALTER TABLE actor_acts_for_tv
ADD CONSTRAINT actor_tv_name_fk FOREIGN KEY(ShowActName)
REFERENCES actor(AName);


ALTER TABLE writer_writes_mov
ADD CONSTRAINT writer_mov_name_fk FOREIGN KEY(MovieWrtName)
REFERENCES writer(WName);


ALTER TABLE writer_writes_mov
ADD CONSTRAINT writer_mov_title_fk FOREIGN KEY(MovieTitle)
REFERENCES movie(MTitle);


ALTER TABLE writer_writes_tv
ADD CONSTRAINT writer_tv_name_fk FOREIGN KEY(ShowWrtName)
REFERENCES writer(WName);


ALTER TABLE writer_writes_tv
ADD CONSTRAINT writer_writes_tv_fk FOREIGN KEY(ShowTitle)
REFERENCES tv_show(TVTitle);


ALTER TABLE awards
ADD CONSTRAINT awards_movie_fk FOREIGN KEY(Awr_Mov_Award)
REFERENCES movie(MTitle);


ALTER TABLE awards
ADD CONSTRAINT awards_tv_show_fk FOREIGN KEY(Awr_TV_Award)
REFERENCES tv_show(TVTitle);


ALTER TABLE award_giver
ADD CONSTRAINT award_giver_fk FOREIGN KEY(AwrName,AwrYear)
REFERENCES awards(AwrName,AwrYear);


ALTER TABLE movie_review
ADD CONSTRAINT mr_title_fk FOREIGN KEY(MR_Title)
REFERENCES movie(MTitle);


ALTER TABLE show_review'{'\', \''.join(args)}'
ADD CONSTRAINT show_title_fk FOREIGN KEY(S_Title)
REFERENCES tv_show(TVTitle);


ALTER TABLE tvep_review
ADD CONSTRAINT episode_title FOREIGN KEY(TVep_Title)
REFERENCES tv_episode(EP_Title);


ALTER TABLE movie_genre
ADD CONSTRAINT movie_genre_mtitle FOREIGN KEY(MovieTitle)
REFERENCES movie(MTitle);


ALTER TABLE show_genre
ADD CONSTRAINT show_genre_tvtitle FOREIGN KEY(ShowTitle)
REFERENCES tv_show(TVTitle);


DESCRIBE movie;
DESCRIBE tv_show;
DESCRIBE tv_episode;
DESCRIBE director;
DESCRIBE director_directs_mov;
DESCRIBE director_directs_tv;
DESCRIBE actor;
DESCRIBE actor_acts_for_mov;
DESCRIBE actor_acts_for_tv;
DESCRIBE writer;
DESCRIBE writer_writes_mov;
DESCRIBE writer_writes_tv;
DESCRIBE awards;
DESCRIBE award_giver;
DESCRIBE movie_review;
DESCRIBE show_review;
DESCRIBE tvep_review;
DESCRIBE movie_genre;
DESCRIBE show_genre;