.PHONY: deps test

deps:
	pip install -r requirements.txt; \
		pip install -r test_requirements.txt
run:
	python main.py
test:
	PYTHONPATH=. py.test
test verbose:
	PYTHONPATH=. py.test --verbose -s

lint:
	flake8 hello_world test
Docker_build:
	docker build -t hello-world-printer

