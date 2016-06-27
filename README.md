# Assessment

This is an open-book **checkpoint** assessment focusing on building a
simple SPOTIFY ruby app using ActiveRecord with SQL database.

# Purpose
The test is to ensure that you are familiar with the basics of ActiveRecord,
and how it works with database (sqlite3 in this case) using Ruby.

# Assessment Time
Maximum **5 hours**

# To start:
1) Fork this repo out by clicking the "**Fork**" button on the top right side of the GitHub page.

```
$ cd ~/Desktop
```

2) Git clone your own forked repo.

```
$ git clone <your repo address>
```

3) Navigate into the repo.
```
$ cd <repo-name>
```

4) Begin your test

> Note:
>
> Remember to commit small and often. Some good references:
>
> `$ git add .`
>
> `$ git commit -m "Add song is done"`
>
> `$ git push origin master`
>
> Ask a mentor if you are stuck with git issues.

5) You should write your driver code inside "**playlist.rb**" file.

6) Once done, perform your last `git push origin master` to your repo.

7) Call a mentor and Slack him/her your GitHub repo link.

8) The mentor will assess your performance.

# App Requirements:

## 1) User is able to list all the songs:

Example:
```
$ ruby playlist.rb --list

No.   Title           Artist            Duration
===   =====           =====             =====
1.    Love Yourself   Justin Bieber     3:51
2.    Stitches        Shawn Mendez      3:59

```

## 2) User is able to add new song into the playlist

```ruby playlist.rb --add <Title> <Artist> <Duration>```

Example:

```
$ ruby playlist.rb --add Maroon5 Sugar 7:00

$ ruby playlist.rb --list

No.   Title           Artist            Duration
===   =====           =====             =====
1.    Love Yourself   Justin Bieber     3:51
2.    Stitches        Shawn Mendez      3:59
3.    Sugar           Maroon5           7:00
```

## 3) User is able to update the song details

```ruby playlist.rb --update <No.> <Title> <Artist> <Duration>```

This will update the song details with the mentioned song number. If the song
is not found, a friendly error should be raised.

Example:

```
$ ruby playlist.rb --list

No.   Title           Artist            Duration
===   =====           =====             =====
1.    Love Yourself   Justin Bieber     3:51
2.    Stitches        Shawn Mendez      3:59
3.    Sugar           Maroon5           7:00

$ ruby playlist.rb --update 3 Maroon5 Sugar 5:01

$ ruby playlist.rb --list

No.   Title           Artist            Duration
===   =====           =====             =====
1.    Love Yourself   Justin Bieber     3:51
2.    Stitches        Shawn Mendez      3:59
3.    Sugar           Maroon5           5:01

$ ruby playlist.rb --update 4 Stitches Shawn Mendes 3:59

Song number 4 is not found. Are you sure that this is the right song number?

```

## 4) User is able to remove any song from playlist

```ruby playlist.rb --remove <No.>```

This will delete the song with the corresponding number from the list. If the song is
not found, a friendly error should be raised.

Example:

```
$ ruby playlist.rb --list

No.   Title           Artist            Duration
===   =====           =====             =====
1.    Love Yourself   Justin Bieber     3:51
2.    Stitches        Shawn Mendez      3:59
3.    Sugar           Maroon5           5:01

$ ruby playlist.rb --remove 2

$ ruby playlist.rb --list

No.   Title           Artist            Duration
===   =====           =====             =====
1.    Love Yourself   Justin Bieber     3:51
2.    Sugar           Maroon5           5:01

$ ruby playlist.rb --remove 3

Song number 4 is not found. Are you sure that this is the right song number?

```

>**IMPORTANT NOTE**:
>
> Take note of the song number. Upon deletion, it should be self-updated
> in an ascending order.
>
> Hmm, but changing the song's id inside your database is never a good idea.
> How can you self-update the number without changing the song's id?

At the end of this assessment, you should be able to:

1) Understand how ARGV works

2) Apply ActiveRecord and Sqlite3 into ruby application

** WITHOUT using SQL statement (refer Rakefile)

    2.1) Able to create SQL database

    2.2) Able to perform schema migration

    2.3) Able to explore sqlite3 database

    2.4) Able to CREATE, READ, UPDATE, DELETE (CRUD) data into SQL database

3) Able to rename files correctly (capitalization, camel case etc)

# Good Luck!!!
