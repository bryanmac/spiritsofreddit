# Spirits of Reddit
A repo for spiritsofreddit.com, a php/mysql based site that fetches and serves posts from the /r/AskOuija subreddit.
## Local Setup
1) To set up locally, create a database and import sample.sql.
2) Copy db-example.php and rename db.php and enter your database credentials.
3) You can run import.php to fetch the latest posts and update your database with more results.
4) To edit styling, run `npm install` and `npm install grunt`, then `grunt watch` to watch for sass file changes and compile to css/site.css.
