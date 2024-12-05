# IMDb Project
## Oracle SQL Code & Python3 Loader

This repository contains code for Oracle database and loading it.

`imdb3.sql`: Main SQL file with tables and keys.

`imdb_data.sql`: 2nd SQL file with auto loaded data. 

`imdb_man_data.sql`: 3rd SQL file with manually loaded data not included in the Non-Commercial data sets.


`ProcessData.py` loads 6 of the 7 dataset files into memory as dictionaries, caching them as `*.json` files for faster loading in the future.  Data is processed with a for loop on the titles.basics file and compared with the other dictionaries for super speed. The script uses `SQLFab(Pos, *inargs, Places = None)` to convert the target table and data to input into a SQL command that works in Oracle. 

## Usage:
In order to use this script you need to download each of the 7 data files from https://datasets.imdbws.com/ and place them into `./Dataset`.
Then open `ProcessData.py` and edit line 17: `path='/home/fexp/IMDb/Dataset'` to be the path to `Dataset`.
Run the script and watch the magic happen!

Edit lines `246` & `247` to point at `imdb_data.sql` and `imdb_man_data.sql` respectively. 
Lastly, load data with `C:\sql\imdb.sql`, replace with your path to file. 


Information courtesy of IMDb
(https://www.imdb.com).
