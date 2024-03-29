.PHONY: setup test clean

setup:
	python3 -m venv venv &&\
	. venv/bin/activate &&\
	pip install --upgrade pip setuptools &&\
	pip install -r requirements.txt -r requirements-dev.txt -r requirements-docs.txt &&\
	python setup.py develop

clean:
	rm -rf build/
	rm -rf dist/
	rm -rf ./*.egg-info

release-pypi: clean
	python3 setup.py sdist bdist_wheel
	python3 -m twine upload dist/*

mkdocs-local:
	mkdocs serve

mkdocs-push:
	mkdocs gh-deploy --force --clean --verbose
