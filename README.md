##README

The `FYBER_API_KEY` is to be added to the newly created `.env` file in the root folder

eg `FYBER_API_KEY=TESTKEY`

Please have a look at `config/initializers/fyber.rb` to understand the configuration.

The application does not intend to have a Database running and therefore the initialization does not
have `rails/all`. But as **Heroku** requires `pg` as a dependency, we need to add this to the `Gemfile`

Things you may want to cover:

* Ruby version : `2.1.2`

* System dependencies : None

* Configuration : Just the set up for the `FyberApiWrapper`

* Database creation : Not required

* Database initialization : Not Required

* How to run the test suite : run `rake`

* Services (job queues, cache servers, search engines, etc.) : None

* Deployment instructions : Heroku just do a `git push heroku master` after adding the git repo
