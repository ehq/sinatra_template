# Sinatra template

This is a simple Sinatra template that adds basic features like a reloader for development, js/css packaging and a basic structure for configurations/initializers.

It comes with no ORM by default so you can choose your own. I'll be adding a couple of branches with some examples (like mongodb-mongoid, redis-ohm, etc.).

### Tree

    .
    ├── Gemfile
    ├── Procfile
    ├── Rakefile
    ├── app
    │   ├── js
    │   ├── models
    │   ├── routes
    │   │   └── homepage.rb
    │   └── views
    │       ├── home.haml
    │       └── layout.haml
    ├── config
    │   └── unicorn.rb
    ├── config.ru
    ├── environments.rb
    ├── init.rb
    ├── initializers
    │   ├── css.rb
    │   └── js.rb
    └── test
        ├── home_test.rb
        └── test_helper.rb

You can specify environment specific configs in `environments.rb`. And also have initializers for js/css/orms/etc in the initializers folder, which will be automatically loaded with the app.

This skeleton has a basic `test` folder and uses minitest, with the turn gem, which is pretty cool. It will also try to load ruby 1.9.3 by default if you have RVM, which will make your tests run **fast**.

### Run it locally

First of all you'll need to run the `bundle` command.

You can just use [Pow!](http://pow.cx/), which takes 2 secs to set up. Or if you need to run multiple processes at the same time to load your app, you could consider using [Foreman](http://devcenter.heroku.com/articles/procfile). Or you can obviously just run `ruby init.rb`.

### Deploy

Read [this](http://michaelvanrooijen.com/articles/2011/06/01-more-concurrency-on-a-single-heroku-dyno-with-the-new-celadon-cedar-stack/) which has some cool benchmarks and explains how to use unicorn with heroku to get the most out of their free plan.

Then you can read [this](http://devcenter.heroku.com/articles/ruby) if you want the full Heroku documentation to deploy a sinatra app to the Cedar stack.

### License

Released under the L.U.C.A.S license: Basically if you are reading this you already owe me money.
