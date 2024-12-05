-- *movie
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

-- -------------------------------------------------------------------------------------------------------

-- *tv_show
INSERT INTO tv_show (Breaking Bad)
VALUES ('Breaking Bad', 'A chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine with a former student to secure his family_s future', 'High Bridge Productions', 'Released', 'Initially released on January 20th, 2008', 9.5, 'In the no-holds-barred world of Walt White, the end justifies the extreme');

INSERT INTO tv_show (Game of Thrones)
VALUES ('Game of Thrones, 'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia' , 'Home Box Office', 'Released', 'Initially released on April 17th, 2011', 9.2, 'Winter is coming');

INSERT INTO tv_show(The Walking Dead)
VALUES ('The Walking Dead', 'Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins and must lead a group of survivors to stay alive.', 'American Movie Classics (AMC)', 'Released', 'Initially released on October 31st, 2010', 8.1, 'Fight the dead. Fear the living.');

INSERT INTO tv_show(The Sopranos)
VALUES ('The Sopranos', 'New Jersey mob boss Tony Soprano deals with personal and professional issues in his home and business life that affect his mental state, lending him to seek professional psychiatric counseling', 'Home Box Office', 'Released', 'Initially released on January 10th, 1999', 9.2, 'Made in America');

INSERT INTO tv_show (Cowboy Bebop)
VALUES ('Cowboy Bebop', 'The futuristic misadventures and tragedies of an easygoing bounty hunter and his partners.', 'Bandai Visual Company', 'Released', 'Initially released on September 2nd, 2001', 8.9, 'See You Space Cowboy…');

-- —---------------------------------------------------------------------------------------------------------

-- tv_episode
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

-- —----------------------------------------------------------------------------------------------------

-- director
INSERT INTO director
VALUES ('Vince Gilligan', '10-Feb-1967', 'Richmond, Virginia, USA', 'https://www.imdb.com/name/nm0319213/mediaviewer/rm1858450944/?ref_=nm_ov_ph');

INSERT INTO director
VALUES ('David Benioff', '25-Sep-1970', 'New York City, New York, USA','https://www.imdb.com/name/nm1125275/mediaviewer/rm3011163648/?ref_=nm_ov_ph');

INSERT INTO director
VALUES ('Frank Darabont', 28-Jan-1959', 'Montbéliard, Doubs, France', 'https://www.imdb.com/name/nm0001104/mediaviewer/rm3402598144/?ref_=nm_ov_ph');

INSERT INTO director
VALUES ('David Chase', 22-Aug-1945, 'Mount Vernon, New York, USA', 'https://www.imdb.com/name/nm0153740/mediaviewer/rm2316344064/?ref_=nm_ov_ph');

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

-- —---------------------------------------------------------------------------------------------------

-- director_directs_mov
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

-- —--------------------------------------------------------------------------------------------------

-- director_directs_tv
INSERT INTO director_directs_tv
VALUES ('Breaking Bad', 'Vince Gilligan');

INSERT INTO director_directs_tv
VALUES ('Game of Thrones', 'David Benioff');

INSERT INTO director_directs_tv
VALUES ('The Walking Dead', 'Frank Darabont');

INSERT INTO director_directs_tv
VALUES ('The Sopranos', 'David Chase');

INSERT INTO director_directs_tv
VALUES ('Cowboy Bebop',' Shin_ichirô Watanabe');

-- —-----------------------------------------------------------------------------------------------------

-- actor
INSERT INTO actor
VALUES ('Bryan Cranston', '7-Mar-1956', 'Hollywood, California, USA', 'https://www.imdb.com/name/nm0186505/mediaviewer/rm1640347136/?ref_=nm_ov_ph');

INSERT INTO actor
VALUES ('Peter Dinklage', '11-June-1969', 'Morristown, New Jersey, USA', 'https://www.imdb.com/name/nm0227759/mediaviewer/rm307862016/?ref_=nm_ov_ph');

INSERT INTO actor
VALUES ('Norman Reedus', 6-Jan-1969', 'Hollywood, Florida, USA', 'https://www.imdb.com/name/nm0005342/mediaviewer/rm246517248/?ref_=nm_ov_ph');

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


-- —----------------------------------------------------------------------------------------------

-- actor_acts_for_mov
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

-- —---------------------------------------------------------------------------------------------

-- actor_acts_for_tv
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

-- —----------------------------------------------------------------------------------------------------------

-- writer
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

-- -- —-------------------------------------------------------------------------------------------------------

-- writer_writes_mov
INSERT INTO writer_writes_mov
VALUES ('That Sugar Film', 'Damon Gameau');

INSERT INTO writer_writes_mov
VALUES ('Whiplash', 'Damien Chazelle');

INSERT INTO writer_writes_mov
VALUES ('Anita: Battle Angel', 'James Cameron');

INSERT INTO writer_writes_mov
VALUES ('A Minecraft Movie', 'Hubble Palmer');

INSERT INTO writer_writes_mov
VALUES ('Interstellar', 'Jonathan Nolan');

-- —--------------------------------------------------------------------------------------------------------

-- writer_writes_tv
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

-- —--------------------------------------------------------------------------------------------------------------

-- *awards
INSERT INTO awards
VALUES ('Best Presentation on Television', 2014, 'Saturn Award', 'Drama', 'Breaking Bad', NULL);

INSERT INTO awards
VALUES ('Best Performance by an Actor in a Supporting Role', 2015, 'Oscar', 'Drama', NULL, 'Whiplash');

INSERT INTO awards
VALUES ('Best Horror Television Series', 2022, 'Saturn Award', 'Zombie Horror', 'The Walking Dead', NULL);

INSERT INTO awards
VALUES ('Best Science Fiction Film', 2015, 'Saturn Award', 'Sci-Fi', NULL, 'Interstellar');

INSERT INTO awards
VALUES ('Television Program Of The Year', 2007, 'AFI Award', 'Gangster', 'The Sopranos', NULL);

-- —--------------------------------------------------------------------------------------------------------------

-- *awards_giver 
INSERT INTO award_giver
VALUES (2014, 'Best Presentation on Television', 'Academy of Science Fiction, Fantasy _and_ Horror Films, USA');

INSERT INTO award_giver
VALUES (2015, 'Best Performance by an Actor in a Supporting Role', 'Lupita Nyong_o');

INSERT INTO award_giver
VALUES (2022, 'Best Horror Television Series', 'Academy of Science Fiction, Fantasy _and_ Horror Films, USA');

INSERT INTO award_giver
VALUES (2015, 'Best Science Fiction Film', 'Academy of Science Fiction, Fantasy _and_ Horror Films, USA');

INSERT INTO award_giver
VALUES (2007, 'Television Program Of The Year', 'American Film Institute, USA');

-- —-------------------------------------------------------------------------------------------------------------

-- *movie_review
INSERT INTO movie_review
VALUES ('Red-Barracuda', 8, 'Genuinely shocking and enlightening health documentary', 'In this documentary, film-maker Damon Gameau becomes his own guinea pig and spends 60 days eating healthy foods with added sugar. Before this process, he had eradicated sugar from his diet so the contrast is even more pronounced. Over the course of the 60 days he puts on considerable weight, experiences mood swings and notices a drop in overall motivation.

What I found so alarming about this film was that it didn't play things easy and simply expose the dangers of excessive sugar intake. Gameau doesn't consume any junk food whatsoever, such as fizzy juice, sweets or ice cream, he instead purely sticks to food marketed as healthy. It_s this more than anything that sets off alarm bells because this route seems to most people a route to weight loss and improved physical well-being, yet as the film demonstrates it actually leads to obesity and mental damage. Time and again we are shown the volumes of sugar that is hidden in so-called 'healthy' foods and it makes you pause for thought. What comes out loud and clear is that sugar is clearly a socially acceptable form of addiction and the sugar industry have been instrumental in minimising public information on the dangers their product presents. It_s very interesting to note that over the course of his 60 day experiment Gameau eats no more calories than he did previously, yet he puts on almost a stone in weight. One of the key lessons, therefore, is that there are calories and there are calories, i.e. sugar calories affect the body decidedly differently to the way protein and carb ones do.

The approach taken by the film is very much of the fun and informative variety. Sometimes the humour doesn't work so well but in the main this approach is good in that it is very accessible. After all, this is a film that you would want children to watch and learn from. There are a couple of star cameos with Hugh Jackman giving us a brief history lesson about man_s relationship with sugar and Stephen Fry pops up to explain some of the science behind it. On the whole, I found this to be an excellent wake-up call about a subject I had hitherto given minimal thought to. There is a lot of very valuable information in this film that could be genuinely life changing if applied to your day to day life, and I reckon that is as good a recommendation as anyone could need.', 'Aug-20-2015');

INSERT INTO movie_review
VALUES ('TheMovieDiorama', 10, 'Whiplash is a modern day masterpiece', 'I don't say that often, in fact...never. There aren't enough superlatives to describe the amazingness of Whiplash. Damien Chazelle crafted not just a tense dramatic piece of cinema, but a thematic experience with layered subtext. Andrew is a college student who simply wants to be the best drummer. Terence Fletcher, a renowned teacher at said college, sees potential in Andrew and chooses him to be the drummer in his band, at the expense of emotional distress. This is a brutal character study, absolutely savage. This is about Fletcher as much as it is about Andrew. The psychological battle and the consequential emotional turmoil that follows. I've never been so compelled in a drama ever (and this is my 5th viewing). The strive for perfection amidst the continuous passion that elevates Andrew as a person and how Fletcher uses his passion in attempt to obtain the perfect musician that Andrew hopes to be. The struggle for perfection is difficult in any profession, there is no right or wrong way to achieve this; the question is: "is there a line between gently pushing someone towards a goal or inflicting emotional torture upon them?". Fletcher leans towards the latter, so much so that he actually imposes physical damage to Andrew to test whether he will be discouraged from the harsh reality of perfection or not. The internal struggle in Andrew is excellently conveyed, you can see his passion seeping through the blood, sweat and tears and yet mentally unable to cope with Fletcher_s methods. A simple story, but executed with such ferocity and intelligence that it just feels fresh. Damien Chazelle directed the heck out of this. Quick cuts between the musical instruments and nice long takes of Miles Teller and J.K Simmons duelling in anger. Speaking on Simmons, the best performance I've seen in years. Both complicated and terrifying simultaneously, he deserved every award. Teller was near perfect as well, conveying innocence and vulnerability. Look, I can talk about Whiplash forever. It_s a masterpiece. End of review.', '2-March-2018');

INSERT INTO movie_review
VALUES ('soultakerneo', 8, 'The Gunnm I liked', 'As a longtime fan of Gunnm(Battle Angel Alita), I am satisfied. I appreciate the production team took their time to do the research of the original serials. The adaptation is great, they filtered out few "acquire taste" and swapped in elements that would make much more appeal to general public. The film really kept true to the original manga and reassembled almost everything from the manga the scenes, mechanical bodies, characters and the world they lived in. They did a great job on capturing Alita_s slightly naïve stubbornness, the "all in or all out" euthanasic, and the pursuit of who she is. Storywise, the film ingeniously weaved the first 11 books of manga together, brought up few events that was happening in the 2nd chapter of Alita_s adventure to the 1st movie. Which is nice since I bet they're already thinking of the next Alita movie. But as few of Cameron_s work, the dark side and the ugliness of irontown wasn't rendered enough. The lack of depth on the ugliness made the whole plot a bit light, the emotional conflict wasn't intense enough and the romance plotline which is very important in the 1st chapter a little bit lack of depth. The overall CG is stunning. Other than the wanted flyer and the parasite_s face the rest of CG is absolute marvelous. All in all, definite a great Gunnm movie, will definite watch it again and again till the sequel is out!!!', 'Feb-15-2019');

INSERT INTO movie_review
VALUES ('ravesch-83770', 10, '7 years later', 'Sometimes I just need to see the start. Or end. Or a trailer. Or the music and theme from Hans Zimmer. Or the whole movie. Just to feel that thing, I only get from this movie. That the earth, space and time are something special, mystical. I never forget the first time I saw this movie, in an IMAX theatre in 2014. I was struck by it. Totally got me. And it stil does, 7 years later. This is the best movie ever made for me. Because of the feeling it gives me, no other movie can. So hard to get all of this emotion in only one movie. Brilliant.', 'Oct-28-2021');

INSERT INTO movie_review
VALUES ('vincent-27', 1, 'Good Directors do not (necessarily) make good writers', 'Some directors can pull of the feat of writing and directing, Tarantino comes to mind. PT Anderson is another. Even though this was co-written between Christopher Nolan and his brother, the Coens they are not!

This movies is a perfect example of how making a movie (as my amateur film maker friend put it) is like building a cathedral. Being good at making stain glass does not make you a good brick layer, and that task is best left to ones who know what they are doing. To whit, we have this monstrous piece of pretentious drivel which attempts, as so many big hollywood movies do, to gloss over hastily written sequences with flash and bombast. This is another movie that feels like it was written by a committee of executives who were barely aware of the history of film and watched a couple of youtube videos on The Grand Unified Theory and tried to write something all smart-like. This movie is so scattered and convoluted it_s hard to begin, and many other reviewers have pointed a lot of the plot elements that are glossed over with yet another "yeah, that happened, deal with it". Here are some of the things that I audibly groaned over:

Why not explain what happened to Earth when every other part of this movie is explained like the audience is 5 years old?

If the technology is available to build spacecraft with cryogen chambers, how about producing new forms of food? Lab grown meat for example? Hydroponic greenhouses etc?

Why are the robots basically mechanical jenga pieces? How does that design make sense? The robot REALLY bothered me, especially how there was absolutely no effort to actually make it sound like a robot, it basically sounded like exactly what it was, which most of the time was just a guy inside a cheap plastic box. His voice didn't even sound like it was coming out of a speaker. HAL sounded like a person, but still had a creepy quality to him that sounded vaguely artificial ("what a moment, wait a moment").

And then there is the idea that you could actually get anywhere near a black hole (let alone wormhole) with relatively recent technology and survive. I have a rudimentary understanding of physics, but even I know that the radiation would turn you into goo pretty fast, space suit or no space suit.

And a guy waits in a spaceship for 23 years by himself and doesn't go insane and looks basically the same except for a few grey hairs in his beard? I could go on and on....

This movie tries really, really hard, there is a lot of balling actors showing off their chops and trusting that they are making a masterpiece, which I imagine every actor must do, but alas there is no saving this movie. It tried too hard to be all things, part 2001: A Space Odyssey, part Armageddon, part Inception and fails on all counts. Everything about this movies hints at greatness, the effects, the Phillip Glass like score written by Hans Zimmer, the tears swelling up at climactic scenes, but it is all empty packing around a bad story. This movie is a shiny car with hamsters on a wheel as the engine.

One positive outcome of this movie is that it has reminded me to read about physics out of interest, but not to discuss them like I know anything, as I will come across as pretentious as this movie.

I suggest everyone watches 2001 to cleanse their pallet and to be reminded of what truly great film making is about.', '31-Dec-2018');

-- —-----------------------------------------------------------------------------------------------------------

-- *show_review
INSERT INTO show_review
VALUES ('bruhperson', 10, 'It_s ok I guess', 'Re-Watched it 7 times and counting. I guess I liked it.', '7-March-2019');

INSERT INTO show_review
VALUES ('nistratovanatala', 1, 'Boring Anime', 'One of the most boring titles I've ever seen. The title tries to create an atmosphere of drama and empathy for the characters, but in my opinion this was not done in the end. If you have a lot of free time, you can watch, but I do not recommend viewing.', '19-Jan-2022');

INSERT INTO show_review
VALUES ('Supermanfan-13', 10, 'One of the best shows ever', 'You know a lot people say this about a ton of different shows but Game of Thrones is absolutely, without a doubt, one of the best TV shows ever created...it_s damn near perfect (except for maybe the last few episodes of the last season) and easily one of my all-time favorite shows! Yeah, the last few episodes of Season 8 weren't that good and the ending was just awful but the first 7 1/2 seasons were so amazing that it still gets a 10 from me! It_s one of the rare shows where I can watch it all the way from the first episode to the last and never get bored. I'm pretty sure there_s never been a show more talked about or more loved in the history of television than GOT. All you have to do is read through the reviews to see how loved this show really is! It_s absolutely amazing.', '10-Dec-2023');

INSERT INTO show_review
VALUES ('jimmyngp', 4, 'Kinda boring and predictable', 'Every season kind of runs together . You could watch the first season only and have everything you need to know about the entire series. Every time someone was about to get killed there would be several clues it was about to happen . What was surprising to me that someone was getting killed almost every episode but no one ever thought they could be killed and of course they were never prepared for it . Not sure why so many people rated this as high as they did . It was so so at best for me .', '6-Dec-2018');

INSERT INTO show_review
VALUES ('niriath', 5, 'A real shame', 'The first 4 seasons were genuinely great! Mostly interesting characters with depth and good archs. Season 5 was okay but became a bit messy. Following seasons became a who' who of human stockpiles. Way too many characters, descisions that made no sense, blurry storylines and no character development.

Entering season 11 and I truly have no idea who most of these people are anymore, what they're doing and why.', '30-Jan-2022');

-- —------------------------------------------------------------------------------------------------------------

-- *tvep_review
INSERT INTO tvep_review
VALUES ('g-bodyl',10, 'Excellent Start!'', 'The Walking Dead is a very popular show and all my friends constantly talk about it. This being the kind of thing I like to watch, I decided to check out this pilot episode. This is so good that I really can't find words to describe my feelings for this. This strikes a high note with your emotions and there_s some great character development with our main character.

This is about a police officer who was shot and induced into a coma during a high-speed chase. When he awakens, he finds out the world has been overrun with zombies and his family missing. He become friends with fellow survivors, a father and his son. After he is told what the world has become, he set out to find his family.

Overall, this is a very fine pilot. It may not feature all action, but the drama is top notch. It has some emotional scenes which I usually don't see in the pilot. The acting is fine from what I see here especially from Andrew Lincoln. I rate this episode 10/10.', '31-Oct-2010', 7, 'Episode 1');

INSERT INTO tvep_review
VALUES ('ruhsa', 10, 'Battle of the Bastards !! Legendary Episode', 'Legendary episode is what comes to my mind after watching the episode. Makers, you gave us lot more than what was expected from this episode.Wow.. just wow.. This is with out a doubt the greatest episode in the history of television. What can I even say! Every part of the episode was great, every emotion was conveyed perfectly, I was crying and cheering nearly the whole way through. I'm sitting here after watching this episode and I just wonder how can an episode of a TV-Show make you feel so many intense feelings in just an hour...? I felt fear, I felt hate, I felt joy, i felt helpless, I felt like all my feelings were mixing together, and boy, it felt amazing! Overall I'd say that this was a brilliant episode that delivered everything expected and more.', '29-Dec-2017', 6, 'Episode 9');

INSERT INTO tvep_review
VALUES ('clubiste-14', 10, 'Best episode ever', 'For me it_s the best episode not only on twd but in all shows i never saw an episode that sad that made that broken the whole episode specially in glenn death because after negan picked abe we thought that he survived the night but in the end he died also the scene when negan ordered rick to cut his son_s arm it was so intense specially the phenomenal acting from andrew lincoln', '14-Mar-2020, 7, 'Episode 1');

INSERT INTO tvep_review
VALUES ('matiasbockerman', 10, 'By far the best episode of the series', 'Everything what headline say is everything what in wanna say. Umbelivable work', '15-Jun-2019', 5, 'Episode 5');

INSERT INTO tvep_review
VALUES ('DVD_Connoisseur', 8, 'Great fun, quite a tail!', 'The second episode of "Cowboy Bebop" is an altogether more lighthearted affair than the opener.

With an interstellar dognapper causing chaos in the star-system, our bold heroes have more than their fair share of pet-related problems.

8 out of 10. Beautifully detailed animation, genuine style and a soundtrack to die for.', '3-Dec-2018', 1, 'Episode 2');

-- —-----------------------------------------------------------------------------------------------------------

-- movie_genre 
INSERT INTO movie_genre
VALUES ('Documentary', 'That Sugar Film');

INSERT INTO movie_genre
VALUES ('Drama', 'Whiplash');

INSERT INTO movie_genre
VALUES ('Action', 'Alita: Battle Angel');

INSERT INTO movie_genre
VALUES ('Adventure', 'A Minecraft Movie');

INSERT INTO movie_genre
VALUES ('Sci-Fi', 'Interstellar');

-- —-------------------------------------------------------------------------------------------------------------

-- show_genre
INSERT INTO show_genre
VALUES ('Breaking Bad', 'Drama');

INSERT INTO show_genre
VALUES ('Game of Thrones', 'Fantasy');

INSERT INTO show_genre
VALUES ('The Walking Dead', 'Zombie Horror');

INSERT INTO show_genre
VALUES ('The Sopranos', 'Gangster');

INSERT INTO show_genre
VALUES ('Cowboy Bebop', 'Anime');


