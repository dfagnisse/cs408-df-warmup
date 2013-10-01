#Adapted from code available at http://www.raywenderlich.com/902/sqlite-tutorial-for-ios-creating-and-scripting
import sqlite3;
 
conn = sqlite3.connect('places.sqlite3')
c = conn.cursor()
c.execute('drop table if exists places')
c.execute('create table places(id integer primary key autoincrement, name text, campus text)')

def mysplit (string):
    quote = False
    retval = []
    current = ""
    for char in string:
        if char == '"':
            quote = not quote
        elif char == ',' and not quote:
            retval.append(current)
            current = ""
        else:
            current += char
    retval.append(current)
    return retval

# Read lines from file, skipping first line
data = open("places.csv", "r").readlines()[1:]
for entry in data:
    # Parse values
    vals = mysplit(entry.strip())
    # Insert the row!
    print "Inserting %s..." % (vals[0])
    sql = "insert into places values(NULL, ?, ?)"
    c.execute(sql, vals)
 
# Done!
conn.commit()