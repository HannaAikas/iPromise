# iPromise -- created by:

Chuan Cheng - https://github.com/nervecell23
Evelina Clayton - https://github.com/EvelinaClayton
Hanna Aikas - https://github.com/HannaAikas  
Imane Ben-touhami - https://github.com/monmon8 
Lauren Harris - https://github.com/LaurenLau   
   
To see the app in action, please visit:

https://cryptic-thicket-87200.herokuapp.com/sign_in

## What is iPromise?

| Github link  | Description | Development Timeframe | Technologies used | Testing & Deployment |
|:-----------:|:-------------:| :------------:| :------------:| :------------:|
| [iPromise](https://github.com/nervecell23/iPromise) | Web App: Allows users to make promises for personal improvement and set an appropriate “punishment” if they fail to keep these. | 2 weeks | Ruby on Rails, HTML, CSS, PostgreSQL | RSpec, Factory_bot, Capybara, Travis CI, Heroku |

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

Ruby version: 2.6.3p62
