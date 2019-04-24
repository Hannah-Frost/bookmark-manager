# Bookmark Manager #

## What criteria should this program satisfy?
```shell
As a user,
so that I can see which bookmarks I have made,
I would like to print a list of bookmarks.
```
```shell
As a user,
so that I can save a website,
I want to add the website url and name to a bookmark manager.
```

## How to create the database

  In your command line, type the following:
  1. `psql` : opens your user database.
  2. `CREATE DATABASE bookmark_manager;` : creates a database
  3. `\c bookmark_manager;` : connects to the bookmark_manager database.
  4. Access `01_create_bookmarks_table.sql` located within db/migrations/. Run the query within the file.

## How to run app in the command line
```
rackup -p 2345
```
## How to view the app

  Use the url `localhost:3000/bookmarks` to view the app.

## Domain Model

  ![Domain Model](https://github.com/Hannah-Frost/bookmark-manager/blob/master/images/domain_model.png)
