release: bundle exec rails db:migrate:reset
web: bundle exec rails server -p $PORT
worker: bundle exec sidekiq -e production -t 25 -c 2
