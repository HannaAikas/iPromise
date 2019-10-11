release: bundle exec rails db:migrate
release: bundle exec rails assets:precompile
web: bundle exec rails server -p $PORT
worker: bundle exec sidekiq -e production -t 25 -c 2
clock: bundle exec clockwork config/clock.rb
