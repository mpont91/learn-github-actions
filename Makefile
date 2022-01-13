.PHONY: build
build:
	docker exec learn-github-actions-app composer install

.PHONY: start
start:
	docker-compose up -d

.PHONY: analysis
analysis:
	docker exec learn-github-actions-app ./vendor/bin/phpstan analyse app tests

.PHONY: test
test:
	docker exec learn-github-actions-app ./vendor/phpunit/phpunit/phpunit
