.phony: build-dev build-prod up down reload test

build-dev:
	docker build -f dev.Dockerfile .

build-prod:
	docker build -f prod.Dockerfile .

up:
	docker-compose up --build

up-d:
	docker-compose up -d --build

down:
	docker-compose down

reload: down up

test:
	docker-compose exec tests npm run test
