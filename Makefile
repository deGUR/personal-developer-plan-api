init: docker-up composer-install
down: docker-down

docker-up:
	docker-compose up -d --build

composer-install:
	docker-compose run --rm php7.4-service composer install

docker-down:
	docker-compose down -v --remove-orphans