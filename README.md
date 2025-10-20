# Personal Library - Ruby on Rail

A applcation to organize your books in bookcases.

* Ruby version : 3.4.7
* SQLite

## How to run the application
```
git clone https://github.com/JonasCandido/PersonalLibrary-Ruby-on-Rails
cd PersonalLibrary-Ruby-on-Rails
bundle
rails db:create
rails db:migrate
rails server
```

## How to use the app
1. You need to create your bookcase
2. After that add your author(s)
3. Create your book selecting the bookcase and author for that book.

## How to run the testcases
```
RAILS_ENV=test bin/rails db:drop db:create db:schema:load && bin/rubocop -f github && bin/rails test && bin/rails test:system
```


