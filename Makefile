.PHONY: changelog coverage deps help lint push test

coverage:  ## Run tests with coverage
	coverage erase
	coverage run --include=forecastvh/* -m pytest -ra
	coverage report -m

deps:  ## Install dependencies
	pip install black coverage flake8 mccabe mypy pylint pytest tox

lint:  ## Lint and static-check
	flake8 forecastvh
	pylint forecastvh --exit-zero
	mypy forecastvh

push:  ## Push code with tags
	git push && git push --tags

test:  ## Run tests
	pytest -ra
