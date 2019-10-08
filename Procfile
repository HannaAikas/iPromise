release: bundle exec rails db:migrate
web: bundle exec rails server -p $PORT
worker: bundle exec sidekiq -e production -t 25
