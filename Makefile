SOURCE_FOLDER = rvm_settings
PYTHON ?= python3

.PHONY: clean
clean:
	rm -f .gitinfo
	rm -rf build dist *.egg-info
	find $(SOURCE_FOLDER) -name __pycache__ | xargs rm -rf
	find $(SOURCE_FOLDER) -name '*.pyc' -delete
	rm -rf reports .coverage
	rm -rf docs/build docs/source
	rm -rf .*cache

.PHONY: check
check: check-imports check-code

.PHONY: check-imports
check-imports:
	isort --check-only $(SOURCE_FOLDER) tests/*

.PHONY: check-code
check-code:
	black --check $(SOURCE_FOLDER) tests/*

.PHONY: reformat
reformat:
	isort  --profile black --atomic $(SOURCE_FOLDER) tests/*
	black $(SOURCE_FOLDER) tests/*

.PHONY: tests
tests:
	pytest

.PHONY: update
update:
	pip install --upgrade -r requirements.txt