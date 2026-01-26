# Semester 1 Week 1 - Introduction to SQL

Each session contains the files for the classwork. Worksheet contains the files for the worksheet. Slides and the full worksheet are available on Minerva.

## Quick Tips

To open sqlite:
```bash
sqlite3 name_of_database.db
```

Inside of sqlite:
```sql
-- To read in sql code from a file:
.read name_of_sql_file.sql

-- To exit sqlite
.exit
```

Sqlite gives you error messages on the terminal if there are syntax errors in your code. However, you may also see `>...` if you miss a `;` from your code as it is waiting for you to finish the query - try entering `;` and see if this fixes it.

If you get stuck in sqlite and are unable to use `.exit` you can use `ctrl+D` or `cmd+D` to escape.


## staff.db
```
sqlite3 staff.db
CREATE TABLE Branch(branchID integer PRIMARY KEY, address text);
CREATE TABLE Staff(staffID integer PRIMARY KEY, name text, branchID integer,
                   FOREIGN KEY (branchID) REFERENCES Branch(branchID));
INSERT INTO Branch VALUES ( 101, '2 Woodhouse Lane' );
INSERT INTO Staff VALUES ( 402, 'John Smith', 101 );
.exit
```

```
sqlite3 staff.db
.dump
.exit
```