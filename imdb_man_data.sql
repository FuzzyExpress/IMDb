INSERT INTO movie
VALUES ('That Sugar Film', 'Damon Gameau embarks on an experiment to document the effects of a high sugar diet on a healthy body.', 'Madman Production Company', 'Release', 'Release on July 31st, 2015', 7.4, 'A film about what really happens when a spoonful of sugar helps the medicine go down');

INSERT INTO movie
VALUES ('Whiplash', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student_s potential.', 'Bold Films', 'Released', 'Released on January 16th, 2014', 8.5, 'The road to greatness can take you to the edge');

INSERT INTO movie
VALUES ('Alita: Battle Angel', 'A deactivated cyborg_s revived, but can_t remember anything of her past and goes on a quest to find out who she is.', 'Twentieth Century Fox', 'Released', 'Released on February 14th, 2019', 7.3, 'Her Legend Begins.');

INSERT INTO movie
VALUES ('A Minecraft Movie', 'Four misfits are suddenly pulled through a mysterious portal into a bizarre, cubic, wonderland that thrives on imagination. To get back home, they_ll have to master this world while embarking on a quest with an unexpected, expert crafter.', 'Warner Bros.', 'Post-Production', 'Expected release on April 4th, 2025', NULL, 'Be There and Be Square.');

INSERT INTO movie
VALUES ('Interstellar', 'When Earth become uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.', 'Paramount Pictures', 'Released', 'Released on November 7th, 2014', 8.7, 'Mankind was born on Earth. It was never meant to die here.');

INSERT INTO tv_show
VALUES ('Breaking Bad', 'A chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine with a former student to secure his family_s future', 'High Bridge Productions', 'Released', 'Initially released on January 20th, 2008', 9.5, 'In the no-holds-barred world of Walt White, the end justifies the extreme');

INSERT INTO tv_show 
VALUES ('Game of Thrones', 'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia' , 'Home Box Office', 'Released', 'Initially released on April 17th, 2011', 9.2, 'Winter is coming');

INSERT INTO tv_show
VALUES ('The Walking Dead', 'Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins and must lead a group of survivors to stay alive.', 'American Movie Classics (AMC)', 'Released', 'Initially released on October 31st, 2010', 8.1, 'Fight the dead. Fear the living.');

INSERT INTO tv_show
VALUES ('The Sopranos', 'New Jersey mob boss Tony Soprano deals with personal and professional issues in his home and business life that affect his mental state, lending him to seek professional psychiatric counseling', 'Home Box Office', 'Released', 'Initially released on January 10th, 1999', 9.2, 'Made in America');

INSERT INTO tv_show
VALUES ('Cowboy Bebop', 'The futuristic misadventures and tragedies of an easygoing bounty hunter and his partners.', 'Bandai Visual Company', 'Released', 'Initially released on September 2nd, 2001', 8.9, 'See You Space Cowboy');




INSERT INTO tv_episode
VALUES ('Fly', 'Season 3, Episode 10', '47 minutes', 7.9, 'Breaking Bad');

INSERT INTO tv_episode
VALUES ('The Iron Throne', 'Season 8, Episode 6', '80 minutes', 4.0, 'Game of Thrones');


INSERT INTO tv_episode
VALUES ('The Day Will Come When You Won_t Be', 'Season 7, Episode 1', '46 minutes' , 9.2, 'The Walking Dead');


INSERT INTO tv_episode
VALUES ('A Hit Is a Hit', 'Season 1, Episode 10', '53 minutes', 7.8, 'The Sopranos');


INSERT INTO tv_episode
VALUES ('The Real Folk Blues: Part 2', 'Season 1, Episode 26', '25 minutes', 9.5, 'Cowboy Bebop');



INSERT INTO director
VALUES ('Vince Gilligan', '10-Feb-1967', 'Richmond, Virginia, USA', 'https://www.imdb.com/name/nm0319213/mediaviewer/rm1858450944/?ref_=nm_ov_ph');

INSERT INTO director
VALUES ('David Benioff', '25-Sep-1970', 'New York City, New York, USA','https://www.imdb.com/name/nm1125275/mediaviewer/rm3011163648/?ref_=nm_ov_ph');

INSERT INTO director
VALUES ('Frank Darabont', '28-Jan-1959', 'Montbéliard, Doubs, France', 'https://www.imdb.com/name/nm0001104/mediaviewer/rm3402598144/?ref_=nm_ov_ph');

INSERT INTO director
VALUES ('David Chase', '22-Aug-1945', 'Mount Vernon, New York, USA', 'https://www.imdb.com/name/nm0153740/mediaviewer/rm2316344064/?ref_=nm_ov_ph');

INSERT INTO director
VALUES ('Shin_ichirô Watanabe', '24-May-1965', 'Kyoto, Kyoto, Japan', 'https://www.imdb.com/name/nm0913860/mediaviewer/rm3904790272/?ref_=nm_ov_ph');

INSERT INTO director
VALUES ('Damon Gameau', '7-Sep-1976', 'Sydney, Australia', 'https://www.imdb.com/name/nm0303902/mediaviewer/rm1558247168/?ref_=nm_ov_ph');

INSERT INTO director
VALUES ('Damien Chazelle', '19-Jan-1985', 'Providence, Rhode Island, USA', 'https://www.imdb.com/name/nm3227090/mediaviewer/rm3314927360/?ref_=nm_ov_ph');

INSERT INTO director
VALUES ('Robert Rodriguez', '20-June-1968', 'San Antonio, Texas, USA', 'https://www.imdb.com/name/nm0001675/mediaviewer/rm3178876416/');

INSERT INTO director
VALUES ('Jared Hess', '18-July-1979', 'Glendale, Arizona, USA', 'https://www.imdb.com/name/nm0381478/mediaviewer/rm971675904/?ref_=nm_ov_ph');

INSERT INTO director
VALUES ('Christopher Nolan', '30-July-1970', 'London, England', 'https://www.imdb.com/name/nm0634240/mediaviewer/rm2047771392/?ref_=nm_ov_ph');


INSERT INTO director_directs_mov
VALUES ('That Sugar Film', 'Damon Gameau');

INSERT INTO director_directs_mov
VALUES ('Whiplash', 'Damien Chazelle');

INSERT INTO director_directs_mov
VALUES ('Alita: Battle Angel', 'Robert Rodriguez');

INSERT INTO director_directs_mov
VALUES ('A Minecraft Movie', 'Jared Hess');

INSERT INTO director_directs_mov
VALUES ('Interstellar', 'Christopher Nolan');



INSERT INTO director_directs_tv
VALUES ('Breaking Bad', 'Vince Gilligan');

INSERT INTO director_directs_tv
VALUES ('Game of Thrones', 'David Benioff');

INSERT INTO director_directs_tv
VALUES ('The Walking Dead', 'Frank Darabont');

INSERT INTO director_directs_tv
VALUES ('The Sopranos', 'David Chase');

INSERT INTO director_directs_tv
VALUES ('Cowboy Bebop','Shin_ichirô Watanabe');



INSERT INTO actor
VALUES ('Bryan Cranston', '7-Mar-1956', 'Hollywood, California, USA', 'https://www.imdb.com/name/nm0186505/mediaviewer/rm1640347136/?ref_=nm_ov_ph');

INSERT INTO actor
VALUES ('Peter Dinklage', '11-June-1969', 'Morristown, New Jersey, USA', 'https://www.imdb.com/name/nm0227759/mediaviewer/rm307862016/?ref_=nm_ov_ph');

INSERT INTO actor
VALUES ('Norman Reedus', '6-Jan-1969', 'Hollywood, Florida, USA', 'https://www.imdb.com/name/nm0005342/mediaviewer/rm246517248/?ref_=nm_ov_ph');

INSERT INTO actor
VALUES ('James Gandolfini', '18-Sep-1961', 'Westwood, New Jersey, USA', 'https://www.imdb.com/name/nm0001254/mediaviewer/rm4175150848/?ref_=nm_ov_ph');

INSERT INTO actor
VALUES ('Kôichi Yamadera', '17-Jun-1961', 'Shiogama, Japan', 'https://www.imdb.com/name/nm0945290/mediaviewer/rm1863723520/?ref_=nm_ov_ph');

INSERT INTO actor
VALUES ('Hugh Jackman', '12-Oct-1968', 'Sydney, New South Wales, Australia', 'https://www.imdb.com/name/nm0413168/mediaviewer/rm772779264/?ref_=nm_ov_ph');

INSERT INTO actor
VALUES ('J.K. Simmons', '9-Jan-1955', 'Grosse Pointe, Michigan, USA', 'https://www.imdb.com/name/nm0799777/mediaviewer/rm2969111552/?ref_=nm_ov_ph');

INSERT INTO actor
VALUES ('Christoph Waltz', '4-Oct-1956', 'Vienna, Austria', 'https://www.imdb.com/name/nm0910607/mediaviewer/rm252355072/?ref_=nm_ov_ph');

INSERT INTO actor
VALUES ('Jack Black', '28-Aug-1969', 'Santa Monica, California, USA', 'https://www.imdb.com/name/nm0085312/mediaviewer/rm2590282497/?ref_=nm_ov_ph');

INSERT INTO actor
VALUES ('Matthew McConaughey', '4-Nov-1969','Uvalde, Texas, USA', 'https://www.imdb.com/name/nm0000190/mediaviewer/rm477213952/?ref_=nm_ov_ph');



INSERT INTO actor_acts_for_mov
VALUES ('That Sugar Film', 'Hugh Jackman');

INSERT INTO actor_acts_for_mov
VALUES ('Whiplash', 'J.K. Simmons');

INSERT INTO actor_acts_for_mov
VALUES ('Alita: Battle Angel', 'Christoph Waltz');

INSERT INTO actor_acts_for_mov
VALUES ('A Minecraft Movie', 'Jack Black');

INSERT INTO actor_acts_for_mov
VALUES ('Interstellar', 'Matthew McConaughey');



INSERT INTO actor_acts_for_tv
VALUES ('Breaking Bad', 'Bryan Cranston');

INSERT INTO actor_acts_for_tv
VALUES ('Game of Thrones', 'Peter Dinklage');

INSERT INTO actor_acts_for_tv
VALUES ('The Walking Dead', 'Norman Reedus');

INSERT INTO actor_acts_for_tv
VALUES ('The Sopranos', 'James Gandolfini');

INSERT INTO actor_acts_for_tv
VALUES ('Cowboy Bebop', 'Kôichi Yamadera');



INSERT INTO writer
VALUES ('Vince Gilligan', '10-Feb-1967', 'Richmond, Virginia, USA', 'https://www.imdb.com/name/nm0319213/mediaviewer/rm1858450944/?ref_=nm_ov_ph');

INSERT INTO writer
VALUES ('David Benioff', '25-Sep-1970', 'New York City, New York, USA','https://www.imdb.com/name/nm1125275/mediaviewer/rm3011163648/?ref_=nm_ov_ph');

INSERT INTO writer
VALUES ('Robert Kirkman','30-Nov-1978', 'Richmond, Kentucky, USA', 'https://www.imdb.com/name/nm3079117/mediaviewer/rm3978439424/?ref_=nm_ov_ph');

INSERT INTO writer
VALUES ('Terence Winter', '2-Oct-1960', 'Brooklyn, New York, USA', 'https://www.imdb.com/name/nm1010540/mediaviewer/rm342334208/?ref_=nm_ov_ph');

INSERT INTO writer
VALUES ('Keiko Nobumotoi', '13-Mar-1964', 'Asahikawa, Hokkaido, Japan', NULL );

INSERT INTO writer
VALUES ('Damon Gameau', '7-Sep-1976', 'Sydney, Australia', 'https://www.imdb.com/name/nm0303902/mediaviewer/rm1558247168/?ref_=nm_ov_ph');

INSERT INTO writer
VALUES ('Damien Chazelle', '19-Jan-1985', 'Providence, Rhode Island, USA', 'https://www.imdb.com/name/nm3227090/mediaviewer/rm3314927360/?ref_=nm_ov_ph');

INSERT INTO writer
VALUES ('James Cameron', '16-Aug-1954', 'Kapuskasing, Ontario, Canada', 'https://www.imdb.com/name/nm0000116/mediaviewer/rm1571458816/?ref_=nm_ov_ph');

INSERT INTO writer
VALUES ('Hubble Palmer', '19-Feb-1977', 'Utah, USA', 'https://www.imdb.com/name/nm1376062/mediaviewer/rm666725888/?ref_=nm_ov_ph');

INSERT INTO writer
VALUES ('Jonathan Nolan', '6-Jun-1976', 'London, England, UK',
'https://www.imdb.com/name/nm0634300/mediaviewer/rm3593121792/?ref_=nm_ov_ph');



INSERT INTO writer_writes_mov
VALUES ('That Sugar Film', 'Damon Gameau');

INSERT INTO writer_writes_mov
VALUES ('Whiplash', 'Damien Chazelle');

INSERT INTO writer_writes_mov
VALUES ('Alita: Battle Angel', 'James Cameron');

INSERT INTO writer_writes_mov
VALUES ('A Minecraft Movie', 'Hubble Palmer');

INSERT INTO writer_writes_mov
VALUES ('Interstellar', 'Jonathan Nolan');



INSERT INTO writer_writes_tv
VALUES ('Breaking Bad', 'Vince Gilligan');

INSERT INTO writer_writes_tv
VALUES ('Game of Thrones', 'David Benioff');

INSERT INTO writer_writes_tv
VALUES ('The Walking Dead', 'Robert Kirkman');

INSERT INTO writer_writes_tv
VALUES ('The Sopranos', 'Terence Winter');

INSERT INTO writer_writes_tv
VALUES ('Cowboy Bebop', 'Keiko Nobumotoi');



INSERT INTO awards
VALUES ('Best Presentation on Television', '1-Jan-2014', 'Saturn Award', 'Drama', 'Breaking Bad', NULL);

INSERT INTO awards
VALUES ('Best Performance by an Actor in a Supporting Role', '1-Jan-2015', 'Oscar', 'Drama', NULL, 'Whiplash');

INSERT INTO awards
VALUES ('Best Horror Television Series', '1-Jan-2022', 'Saturn Award', 'Zombie Horror', 'The Walking Dead', NULL);

INSERT INTO awards
VALUES ('Best Science Fiction Film', '1-Jan-2015', 'Saturn Award', 'Sci-Fi', NULL, 'Interstellar');

INSERT INTO awards
VALUES ('Television Program Of The Year', '1-Jan-2007', 'AFI Award', 'Gangster', 'The Sopranos', NULL);



INSERT INTO award_giver
VALUES ('1-Jan-2014', 'Best Presentation on Television', 'Academy of Science Fiction, Fantasy _and_ Horror Films, USA');

INSERT INTO award_giver
VALUES ('1-Jan-2015', 'Best Performance by an Actor in a Supporting Role', 'Lupita Nyong_o');

INSERT INTO award_giver
VALUES ('1-Jan-2022', 'Best Horror Television Series', 'Academy of Science Fiction, Fantasy _and_ Horror Films, USA');

INSERT INTO award_giver
VALUES ('1-Jan-2015', 'Best Science Fiction Film', 'Academy of Science Fiction, Fantasy _and_ Horror Films, USA');

INSERT INTO award_giver
VALUES ('1-Jan-2007', 'Television Program Of The Year', 'American Film Institute, USA');



