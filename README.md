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
```shell
As a user,
so that I can keep my manager up to date,
I want to add new bookmarks to the manager.
```

## How to create the databases

  In your command line, type the following:
  1. `psql` : open your user database.
  2. `CREATE DATABASE bookmark_manager;` : create a database.
  3. `CREATE DATABASE bookmark_manager_test;` : create a database for testing.
  4. `\c bookmark_manager;` : connect to the bookmark_manager database.
  5. Access `01_create_bookmarks_table.sql` located within db/migrations/. Run the query within both databases.

## How to start the server for the app

  Type `rackup -p 2345` into your command line to start the server. Do CTRL+C to close the server.

## How to view the app

  Use the url `localhost:2345/bookmarks` to view the app.

## Domain Model

  ![Domain Model](https://github.com/Hannah-Frost/bookmark-manager/blob/master/images/domain_model.png)
