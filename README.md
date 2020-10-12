# Blog Challenge


* Ruby version: 2.7.1

* Dependencies
  - [Rails 6.0.3](https://guides.rubyonrails.org/getting_started.html)
  - [Mongoid 7.0.5](https://docs.mongodb.com/mongoid/current/tutorials/getting-started-rails/)
  - [Devise 4.7.3](https://github.com/heartcombo/devise#getting-started)

* Getting Started
  - Fork and/or clone this repository, then run the following commands:
    - `cd ruths_kitchen`
    - `bundle install`
    - `rails s`
  - Navigate to `localhost:3000` in your favorite browser. You should land at the articles#index page.

* Database creation

  Ensure you have installed MongoDB community, and the service is started. The included app configuration will handle the rest. [Homebrew](https://brew.sh/) is a great way to [install MongoDB](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/).

* How to run the test suite

  Testing framework for this project is rspec.
  Run `rspec` to run the entire test suite.
  Alternatively, run `rspec spec/<type_of_test>/<test_name>_spec.rb` to run an individual test.

* Learnings & Thoughts

  I really thought I would get more than this done in 3 hours. However, I wanted to demonstrate that I could write rails Models, Views, and Controllers from the ground up. So after using the Devise generators for the users I chose to hand roll the Post model and controller. This decision led to not completing the challenge within the allotted time, and that I find disappointing. My preparation for this included writing another blog app (I did not know that this challenge was to be a blog). This seems to be a strong indicator to me that I need more practice with Rails. However, I know with even just a few weeks of practice I can get back up to speed.

  I am proud of the demonstration of user-worklow oriented feature tests. Given the time, I would have made these much more robust for happy and sad path cases of authenticated vs not authenticated users, and edge cases around post creation/editing etc.

  MongoDB is a new technology to me, and so not having familiarity with Mongoid syntax vs that of Active Record slowed down my development. However, I do like Mongo's document model, it's intuitive particularly having had experience with GraphQL. This was my first experience in Rails with a non-relation database, and I very much preferred the pattern over a relational database. It eliminates the need to worry about joins tables and assicated models, etc significantly speeding development.

  I am proud that I was able to get pagination with kaminari working, I've never used this gem and though I first used my db query to limit to 10 posts to get my tests to run, I got the pagination of posts working, if not the pagination controls themselves.