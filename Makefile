build:
	docker compose up -d

test:
	docker compose run --rm library mvn test
