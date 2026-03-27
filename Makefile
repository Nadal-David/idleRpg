PROJECT=idle
.PHONY: up up-d build down restart logs backend frontend postgres

####################################
# Docker
####################################

up:
	docker compose up

up-d:
	docker compose up -d

build:
	docker compose build

down:
	docker compose down

restart:
	docker compose down
	docker compose up -d

logs:
	docker compose logs -f

####################################
# Containers
####################################

backend:
	docker compose exec backend sh

frontend:
	docker compose exec frontend sh

postgres:
	docker compose exec postgres psql -U crypto -d idle