# iPromise -- created by:

Hanna Aikas - https://github.com/HannaAikas   
Lauren Harris - https://github.com/LaurenLau   
Chuan Cheng - https://github.com/nervecell23   
Imane Ben-touhami - https://github.com/monmon8   
Evelina Clayton - https://github.com/EvelinaClayton


To see the app in action, please visit:

https://cryptic-thicket-87200.herokuapp.com/sign_in

## What is iPromise?

| Github link  | Description | Development Timeframe | Technologies used | Testing |
|:-----------:|:-------------:| :------------:| :------------:| :------------:|
| [iPromise](https://github.com/nervecell23/iPromise) | Web App: Allows users to make promises for personal improvement and nominated friends keep them accountable. | 2 weeks | Ruby, Ruby on Rails, HTML, CSS, Postgres, Heroku | RSpec, Factory_bot, Travis CI |

This project has the following features: 

* Authentication (Sign-up, Log-in, Log-out)

* Scheduler (to do the countdown)

* A user can create and edit a new promise

* A user can nominate friend to keep them accountable for the promise made

* A user recieves helpful text message to check on their promise and its progress as well as an encouraging reminder

* The web app has 'Congratulations you kept your promise' and 'Oh no! You broke your promise' pages

## Quick start

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate
```
Then:

```bash
> bin/rails server # Start the server at localhost:3000
```

To test iPromise using Rspec:

```bash
> rspec
```

----------------------
# CHECK LIST

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
