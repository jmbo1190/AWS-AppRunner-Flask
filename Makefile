install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C,W1203,W0702 change-app.py

test:
	python -m pytest -vv --cov=app test_change-app.py

all: install lint test
