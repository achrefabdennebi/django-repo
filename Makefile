.PHONY: install
install:
	poetry install

.PHONY: install-precommit
install-precommit:
	poetry run pre-commit uninstall;poetry run pre-commit install

.PHONY: lint
lint:
	poetry run pre-commit run  -a

.PHONY: migrate
migrate:
	poetry run python -m core.manage migrate

.PHONY: migrations
migrations:
	poetry run python -m core.manage makemigrations

.PHONY: run-server
run-server:
	poetry run python -m core.manage runserver

.PHONY: superuser
superuser:
	poetry run python -m core.manage createsuperuser

.PHONY: update
update: install migrate install-precommit;
