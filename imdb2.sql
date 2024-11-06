CLEAR SCR

DROP TABLE movie                	CASCADE CONSTRAINTS;
DROP TABLE tv_show                	CASCADE CONSTRAINTS;
DROP TABLE tv_episode               CASCADE CONSTRAINTS;

DROP TABLE director             	CASCADE CONSTRAINTS;
DROP TABLE director_directs_mov    	CASCADE CONSTRAINTS;
DROP TABLE director_directs_tv     	CASCADE CONSTRAINTS;

DROP TABLE actor             		CASCADE CONSTRAINTS;
DROP TABLE actor_acts_for_mov     	CASCADE CONSTRAINTS;
DROP TABLE actor_acts_for_tv     	CASCADE CONSTRAINTS;

DROP TABLE writer             		CASCADE CONSTRAINTS;
DROP TABLE writer_writes_mov     	CASCADE CONSTRAINTS;
DROP TABLE writer_writes_tv     	CASCADE CONSTRAINTS;

DROP TABLE awards                   CASCADE CONSTRAINTS;

DROP TABLE movie_review             CASCADE CONSTRAINTS;
DROP TABLE show_review              CASCADE CONSTRAINTS;
DROP TABLE tvep_review              CASCADE CONSTRAINTS;


CREATE TABLE movie
(
    MTitle      	VARCHAR2    (32)    CONSTRAINT MTitle    NOT NULL,
    MDescription    VARCHAR2    (1024),
    MStudio   	 	VARCHAR2    (32),
    MState          VARCHAR2    (16),
    MDetails        VARCHAR2    (64),
    MRating         NUMBER, --     (2, 2),
    MTagline        VARCHAR2    (32),
    CONSTRAINT movie_pkey PRIMARY KEY (Title)
);

CREATE TABLE tv_show
(
    TVTitle     	VARCHAR2    (32)    CONSTRAINT Title    NOT NULL,
    TVDescription	VARCHAR2    (1024),
    TVStudio   	    VARCHAR2    (32),
    TVState  		VARCHAR2    (16),
    TVDetails		VARCHAR2    (64),
    TVRating 		NUMBER, --      (2, 2),
    TVTagline		VARCHAR2    (32),
    CONSTRAINT movie_pkey PRIMARY KEY (Title)
);

CREATE TABLE tv_episode
(
    EP_Title      	VARCHAR2    (32)    CONSTRAINT Title    NOT NULL,
    EP_Season     	VARCHAR2    (1024),
	EP_Duration   	VARCHAR2    (32),
    EP_Rating       NUMBER, --      (2, 2),
    ShowTitle       VARCHAR2    (32),
    CONSTRAINT movie_pkey PRIMARY KEY (Title)
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
    MovieTitle      VARCHAR2    (32)
    MovieDirName    VARCHAR2    (32)
);

CREATE TABLE director_directs_tv
(
    ShowTitle       VARCHAR2    (32)
    ShowDirName     VARCHAR2    (32)
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
    MovieTitle      VARCHAR2    (32)
    MovieActName    VARCHAR2    (32)
);

CREATE TABLE actor_acts_for_tv
(
    ShowTitle       VARCHAR2    (32)
    ShowActName     VARCHAR2    (32)
);



CREATE TABLE writer
(
    WName           VARCHAR2    (32)    CONSTRAINT WName    NOT NULL,
    WBithDay        DATE,
    WBithLoc        VARCHAR2    (64),
    WPhoto          VARCHAR2    (512), -- cdn link
    CONSTRAINT director_pkey PRIMARY KEY (WName)
);

CREATE TABLE writer_writes_mov
(
    MovieTitle      VARCHAR2    (32)
    MovieWrtName    VARCHAR2    (32)
);

CREATE TABLE writer_writes_tv
(
    ShowTitle       VARCHAR2    (32)
    ShowWrtName     VARCHAR2    (32)
);



CREATE TABLE awards
(
	AwrName			VARCHAR2 	(16) 	CONSTRAINT AwrName    NOT NULL,
    AwrYear         DATE    			CONSTRAINT AwrYear    NOT NULL,
	AwrType			VARCHAR2    (16),
	AwrGenre		VARCHAR2    (16),
	Awr_TV_Award	VARCHAR2    (32),
	Awr_Mov_Award	VARCHAR2    (32),

    
    CONSTRAINT award_name_year PRIMARY KEY (AwrName,AwrYear)
    -- CONSTRAINT award_year PRIMARY KEY (AwrYear)
);

CREATE TABLE award_giver
(
    AwrName      VARCHAR2    (16)
    AwrGiver     VARCHAR2    (32)
);

CREATE TABLE movie_review
(
    MR_User         VARCHAR2    (32)    CONSTRAINT MR_User  NOT NULL,
    MR_Rating       NUMBER,
    MR_Title        VARCHAR2    (32),
    MR_Body         VARCHAR2    (250),
    MR_Date         DATE
    CONSTRAINT movie_review_mr_user PRIMARY KEY (MR_User)
);

CREATE TABLE show_review
(
    S_User         VARCHAR2    (32)    CONSTRAINT S_User  NOT NULL,
    S_Rating       NUMBER,
    S_Title        VARCHAR2    (32),
    S_Body         VARCHAR2    (250),
    S_Date         DATE
    CONSTRAINT show_review_s_user PRIMARY KEY (S_User)
);

CREATE TABLE tvep_review
(
    TVep_User         VARCHAR2    (32)    CONSTRAINT S_User  NOT NULL,
    TVep_Rating       NUMBER,
    TVep_Title        VARCHAR2    (32),
    TVep_Body         VARCHAR2    (250),
    TVep_Date         DATE
    TVep_Season       NUMBER,
    TVep_Episode      VARCHAR2    (32),
    CONSTRAINT tvep_review_s_user PRIMARY KEY (TVep_User)
);


ALTER TABLE director_directs
ADD CONSTRAINT movie_fk FOREIGN KEY(MovieTitle)
REFERENCES movie(Title);

ALTER TABLE director_directs
ADD CONSTRAINT director_fk FOREIGN KEY(DirName)
REFERENCES director(DName);


DESCRIBE movie;
DESCRIBE director;


