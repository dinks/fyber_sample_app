##README

The `FYBER_API_KEY` is to be added to the newly created `.env` file in the root folder

eg `FYBER_API_KEY=TESTKEY`

Please have a look at `config/initializers/fyber.rb` to understand the configuration.

The application does not intend to have a Database running and therefore the initialization does not
have `rails/all`. But as **Heroku** requires `pg` as a dependency, we need to add this to the `Gemfile`

* Considerations when developing

The awesome [Grape API Framework](https://github.com/intridea/grape) was used for the api side.

A single `API` class was written and the `Fyber::Offer` was mounted.

`Grape::Entity` is used for the Presenters as the `fyber_api_wrapper` returns us results in a Ruby way. These presenters takes the good parts of the hashes. 

`Rspec` was used in testing (controller and request spec). Mocking was done using `webmock`.

A bunch of simple `JavaScript` files were used to access the api from the `localhost` which goes through the gem to access the Fyber API.


Other Facts

* Ruby version : `2.1.2`

* System dependencies : None

* Configuration : Just the set up for the `FyberApiWrapper`

* Database creation : Not required

* Database initialization : Not Required

* How to run the test suite : run `rake`

* Services (job queues, cache servers, search engines, etc.) : None

* Deployment instructions : Heroku just do a `git push heroku master` after adding the git repo


