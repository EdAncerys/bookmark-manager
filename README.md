# Walkthrough - Creating User Stories

[Back to Challenge](../01_creating_user_stories.md)

The precise details of the user story is up to you. Here's my go:

```
As a time-pressed user
So that I can quickly go to web sites I regularly visit
I would like to see a list of bookmarks
```

Here's what I came up with as a domain model:

![Bookmark Manager domain model](../images/bookmark_manager_1.png)

- When the user visits the '/bookmarks' path, their browser sends a request to a controller we built.
- When the controller gets the request, it asks the `Bookmark` class to give it all the bookmarks, i.e. the controller asks for `Bookmark.all`.
- The `Bookmark` class goes and gets the bookmarks, and gives back all the bookmarks in an array to the controller.
- The controller renders the array of bookmarks to a webpage, which it sends as a response to the user

So, it feels like the first things we need are:
 - a Controller
 - a Bookmark class
 - A bookmark view

> That's enough design for now. We should aim to start coding sooner rather than later.

[Here's](https://github.com/makersacademy/bookmark_manager_example/commit/78e6f02cedbffe9479f4f81f15ab135d68b3f95c) a commit of this stage.

[Next Challenge](../02_setting_up_a_web_project.md)


![Tracking pixel](https://githubanalytics.herokuapp.com/course/bookmark_manager/walkthroughs/01.md)

This is a start, but it's not enough to simply record the SQL queries, the README needs to be updated with instructions on how to use these. Anyone needing to setup the database from scratch will need to do the following things:

Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the pqsl command \c bookmark_manager;
Run the query we have saved in the file 01_create_bookmarks_table.sql
