bash: ## drop into container shell
	@docker-compose exec web bash

binstall: ## runs bundle install
	@docker-compose run --rm web bundle install --full-index

console: ## opens rails console
	@docker-compose exec web bundle exec rails c

dbmigrate: ## runs db:migrate
	@docker-compose run --rm web bundle exec rails db:migrate

dbrollback: ## runs db:rollback
	@docker-compose run --rm web bundle exec rails db:rollback

down: ## shutdown containers
	@docker-compose down

path ?= spec
rspec: ## run rspec tests
	@docker-compose run --rm web bundle exec rspec $(path)

up: ## start containers
	@docker-compose up
