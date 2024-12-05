import json, os, tabulate, threading, time, datetime


global counter, timer, finished
counter  = [0, 0, 0, 0, 0, 0, 0]
timer    = time.time()
finished = [False, False, False, False, False, False, False]

def pad(input):
    out = []
    for each in input:
        out.append( str(each).ljust(12) )
    return ' '.join(out)



path='/home/evans/IMDb/Dataset'

Lang        = {};
Info        = {};
Crew        = {};
Episode     = {};
Principals  = {};
Ratings     = {};
People      = {};

dicts = [Lang, Info, Crew, Episode, Ratings, People]   

files = {
    "Lang":         f'{path}/title.akas.tsv'            ,
    "Info":         f'{path}/title.basics.tsv'          ,
    "Crew":         f'{path}/title.crew.tsv'            ,
    "Episode":      f'{path}/title.episode.tsv'         ,
    "Principals":   f'{path}/title.principals.tsv'      ,
    "Ratings":      f'{path}/title.ratings.tsv'         ,
    "People":       f'{path}/name.basics.tsv'           ,
}


def timeKeeper():
    global counter, timer, finished
    while True:
        t = time.time() - timer
        print(f'{pad(files)}\n{pad(counter)} @ { round(t, 1) }s\n{pad(finished)}\n' )
        time.sleep(1)

threading.Thread(target=timeKeeper, daemon=True).start()

def count(id):
    global counter
    counter[id] += 1;

    boolean = counter[id] >= 500000

    return boolean; # use some
    return False; # use all


def Finished(id):
    global finished
    finished[id] = True;
    return True


def FunLang(Lang): 
    Finished(0);
    Cache = files['Lang'].replace('tsv', 'json')
    if os.path.exists(Cache):
        with open(Cache, 'r') as cache:
            Lang = json.load(cache)
    else: 

        Lang = {}
        with open(files['Lang'], 'r') as lines:
            for line in lines:
                if count(0): break;
                ID, _, Title, R, L, T, A, Orig = line.strip().split('\t')
                if R != 'US': continue
                Lang[ID] = {'Title': Title, 'Region': R, 'Lang': L, 'IsOrgTitle': Orig}

        with open(Cache, 'w') as cache:
            json.dump(Lang, cache)
    Finished(0); return Lang;

def FunInfo(Info):
    Cache = files['Info'].replace('tsv', 'json')
    if os.path.exists(Cache):
        with open(Cache, 'r') as cache:
            Info = json.load(cache)
    else: 

        Info = {}
        with open(files['Info'], 'r') as lines:
            for line in lines:
                if count(1): break;
                ID, Type, PTitle, OTitle, Adult, StartYear, EndYear, RunTimeMin, Genres = line.strip().split('\t')
                if Type not in ['movie', 'tvSeries', ' tvEpisode']: continue
                Info[ID] = {'Type': Type, 'PTitle': PTitle, 'OTitle': OTitle, 'RunTimeMin': RunTimeMin, 'Genre': Genres}

        with open(Cache, 'w') as cache:
            json.dump(Info, cache)
                
    Finished(1); return Info;

def FunCrew(Crew):
    Cache = files['Crew'].replace('tsv', 'json')
    if os.path.exists(Cache):
        with open(Cache, 'r') as cache:
            Crew = json.load(cache)
    else: 

        Crew = {}
        with open(files['Crew'], 'r') as lines:
            for line in lines:
                if count(2): break;
                ID, Directors, Writers = line.strip().split('\t')
                Crew[ID] = {'Directors': Directors, 'Writers': Writers}

        with open(Cache, 'w') as cache:
            json.dump(Crew, cache)
    Finished(2); return Crew;

def FunEpisode(Episode):
    Cache = files['Episode'].replace('tsv', 'json')
    if os.path.exists(Cache):
        with open(Cache, 'r') as cache:
            Episode = json.load(cache)
    else: 

        Episode = {}
        with open(files['Episode'], 'r') as lines:
            for line in lines:
                if count(3): break;
                ID, TVParent, TVSeason, TVEpisode = line.strip().split('\t')
                if not TVParent.startswith('tt'): continue
                Episode[ID] = {'TVParent': TVParent, 'TVSeason': TVSeason, 'TVEpisode': TVEpisode}

        with open(Cache, 'w') as cache:
            json.dump(Episode, cache)
    Finished(3); return Episode;

def FunPrincipals(Principals):
    Cache = files['Principals'].replace('tsv', 'json')
    if os.path.exists(Cache):
        with open(Cache, 'r') as cache:
            Principals = json.load(cache)
    else: 

        Principals = {}
        with open(files['Principals'], 'r') as lines:
            for line in lines:
                if count(4): break;
                ID, Num, PersonID, Catagory, Job, Chars = line.strip().split('\t')
                if ID == 'tconst': continue
                if Catagory not in ['actor', 'actress', 'director', 'writer']: continue;
                Principals[ID] = int(Num)
                Principals[f'{ID}*{Num}'] = {'PersonID': PersonID, 'Catagory': Catagory, 'Job': Job, 'Chars': Chars}

        with open(Cache, 'w') as cache:
            json.dump(Principals, cache)
    Finished(4); return Principals;

def FunRatings(Ratings):
    Cache = files['Ratings'].replace('tsv', 'json')
    if os.path.exists(Cache):
        with open(Cache, 'r') as cache:
            Ratings = json.load(cache)
    else: 

        Ratings = {}
        with open(files['Ratings'], 'r') as lines:
            for line in lines:
                if count(5): break;
                ID, AveRating, Votes = line.strip().split('\t')
                Ratings[ID] = {'AveRating': AveRating, 'Votes': Votes}

        with open(Cache, 'w') as cache:
            json.dump(Ratings, cache)
    Finished(5); return Ratings;

def FunPeople(People):
    Cache = files['People'].replace('tsv', 'json')
    if os.path.exists(Cache):
        with open(Cache, 'r') as cache:
            People = json.load(cache)
    else: 

        People = {}
        with open(files['People'], 'r') as lines:
            for line in lines:
                if count(6): break;
                PersonID, Name, Birth, Death, Job, KnownFor = line.strip().split('\t')
                People[PersonID] = {'Name': Name, 'Birth': Birth, 'Death': Death, 'Job': Job, 'KnownFor': KnownFor}

        with open(Cache, 'w') as cache:
            json.dump(People, cache)
    Finished(6); return People;


Lang        = FunLang(Lang); 
Info        = FunInfo(Info); 
# Crew        = FunCrew(Crew); 
Episode     = FunEpisode(Episode); 
Principals  = FunPrincipals(Principals); 
Ratings     = FunRatings(Ratings); 
People      = FunPeople(People)    

print('Loaded!')

files2 = {
    "Lang":         f'{path}/title.akas.tsv'            ,
    "Info":         f'{path}/title.basics.tsv'          ,
    "Crew":         f'{path}/title.crew.tsv'            ,
    "Episode":      f'{path}/title.episode.tsv'         ,
    "Principals":   f'{path}/title.principals.tsv'      ,
    "Ratings":      f'{path}/title.ratings.tsv'         ,
    "People":       f'{path}/name.basics.tsv'           ,
}

OutSQL = open('/home/evans/IMDb/imdb_data.sql', 'w')

def SQLFab(Pos, *inargs, Places=None):
    args = []
    for x in range(len(inargs)):
        if inargs[x] == None:
                args.append(None)
        else:   args.append(inargs[x])

    SQL = f"INSERT INTO {Pos}"

    if Places != None: 
        SQL += " ("
        SQL += ', '.join(Places)
        SQL += ")"

    SQL += "\nVALUES "
    SQL += '('

    for x in range(len(args)):
        if x != 0:
            SQL += ", "
        
        if args[x] == None:
            # print('None:', args[x])
            SQL += "NULL"
                
        else:
            try: 
                float(args[x].strip())
                # print('int:', args[x])
                SQL += args[x]

            except Exception:
                # print('str:', args[x])
                SQL += "'"
                SQL += str(args[x]).replace("'", "_").replace('&', '_and_')
                SQL += "'"

    SQL += ')'
    SQL += ';\n'

    # print( SQL )
    print( SQL, file = OutSQL )

# Refrence
# Lang[ID]          = {'Title': Title, 'Region': R, 'Lang': L, 'IsOrgTitle': Orig}
# Info[ID]          = {'Type': Type, 'PTitle': PTitle, 'OTitle': OTitle, 'RunTimeMin': RunTimeMin, 'Genre': Genres.split()}
# Crew[ID]          = {'Directors': Directors, 'Writers': Writers}
# Episode[ID]       = {'TVParent': TVParent, 'TVSeason': TVSeason, 'TVEpisode': TVEpisode}
# Principals[ID]    = {'PersonID': PersonID, 'Catagory': Catagory, 'Job': Job, 'Chars': Chars}
# Ratings[ID]       = {'AveRating': AveRating, 'Votes': Votes}
# People[PersonID]  = {'Name': Name, 'Birth': Birth, 'Death': Death, 'Job': Job, 'KnownFor': KnownFor}


for ID in Info:
    if Info[ID] == 'tconst': continue;
    if Info[ID]['Type'] not in ('movie', 'tvSeries', 'tvEpisode'): continue;

    try:
        if 'Region' in Lang[ID] and Lang[ID]['Region'] == 'US': ...
        else:        continue
    except KeyError: continue


    if ID in Ratings: Rating = Ratings[ID]['AveRating']
    else: Rating = None

    if Info[ID]['Type'] in ('movie'):
        SQLFab( 'movie', Info[ID]['PTitle'], Rating, Places=['MTitle', 'MRating'] )

        for each in Info[ID]['Genre'].split(','):
            if each == "\\N": continue;
            SQLFab( 'movie_genre', Info[ID]['PTitle'], each )

        try:   # People Stuff
            r = Principals[ID]
            for x in range(1, r):
                data = Principals[f'{ID}*{x}']

                for each in data['Catagory'].split(','):
                    if each in ['actor', 'actress', 'director', 'writer']:
                        if   each == 'director':              table = ['director_directs_mov',  'director'  ]
                        elif each in ['actor', 'actress']:    table = ['actor_acts_for_mov',    'actor'     ]
                        elif each == 'writer':                table = ['writer_writes_mov',     'writer'    ]
                        else: continue;
        
                        SQLFab( table[1], People[ data['PersonID'] ]['Name'], None, None, People[ data['PersonID'] ]['Birth'] )

                        SQLFab( table[0], Info[ID]['PTitle'], People[ data['PersonID'] ]['Name'] )

        except: continue


    if Info[ID]['Type'] in ('tvSeries'):
        SQLFab( 'tv_show', Info[ID]['PTitle'], Rating, Places=['TVTitle', 'TVRating'] )

        for each in Info[ID]['Genre'].split(','):
            if each == "\\N": continue;
            SQLFab( 'show_genre', Info[ID]['PTitle'], each )

        try:   # People Stuff
            r = Principals[ID]
            for x in range(1, r):
                data = Principals[f'{ID}*{x}']

                for each in data['Catagory'].split(','):
                    print(each)
                    if each in ['actor', 'actress', 'director', 'writer']:
                        if   each == 'director':              table = ['director_directs_tv',  'director'  ]
                        elif each in ['actor', 'actress']:    table = ['actor_acts_for_tv',    'actor'     ]
                        elif each == 'writer':                table = ['writer_writes_tv',     'writer'    ]
                        else: continue;
        
                        SQLFab( table[1], People[ data['PersonID'] ]['Name'], None, None, People[ data['PersonID'] ]['Birth'] )

                        SQLFab( table[0], Info[ID]['PTitle'], People[ data['PersonID'] ]['Name'] )

        except: continue

    try:
        if Info[ID]['Type'] in ('tvEpisode'):
            EP = Episode[ID]
            SQLFab( 'tv_episode', Info[ID]['PTitle'], EP['TVSeason'], EP['TVEpisode'], Info[EP['TVParent']]['RunTimeMin'], Rating )
    except KeyError: 
            SQLFab( 'tv_episode', Info[ID]['PTitle'], EP['TVSeason'], EP['TVEpisode'], "ParentKeyError", Rating )           