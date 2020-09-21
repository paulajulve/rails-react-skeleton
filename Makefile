.PHONY: build
build:
	docker-compose build
	docker-compose up -d
	docker-compose run server rake db:create
	docker-compose run server rake db:migrate
