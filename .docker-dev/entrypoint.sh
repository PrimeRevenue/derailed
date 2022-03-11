#!/bin/sh
set -e

echo "Installing gems if needed"
bundle check || bundle install

echo "Creating / Migrating database if needed"
bundle exec rake db:migrate 2>/dev/null || bundle exec rake db:setup

echo "Running: $@"
exec "$@"
