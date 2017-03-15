# Rails + Grape API

This is an API example created using [Grape](https://github.com/ruby-grape/grape) over an Ruby on Rails project.
The database using is the default sqlite3 using activerecord.

So you can add new entries using curl:

* curl -H "Content-Type: application/json" -X POST -d '{"name":"BookName","author":"xyz","year":"1995"}' http://localhost:3000/api/v1/book_data.json

Also you can delete an entry:
* curl -X DELETE http://localhost:3000/api/v1/book_data/1.json

Or Update an Author for a specific entry:
* curl -X PUT http://localhost:3000/api/v1/book_data/1.json -d "author=AnotherAuthor"
