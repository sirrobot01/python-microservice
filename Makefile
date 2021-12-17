SHELL := /bin/bash

# Services vars goes here


# This takes a 'name' variable which corresponds to the path to the app relative to ./services
# make init.env name=core will initialize and install requirements to the core app
env:
	cd services/$(name) && \
	python -m venv venv && . venv/bin/activate && \
	 pip install --upgrade pip && pip install -r requirements.txt

# Services

core:
	# Assuming core is a Django app
	cd  services/core && \
	. venv/bin/activate && \
	pip install -r requirements.txt && \
	python manage.py migrate && \
	python manage.py runserver 8000
	

fastapi:
	# Assuming core is a FastAPI app
	cd  services/fastapi_app && \
	. venv/bin/activate && \
	pip install -r requirements.txt && \
	uvicorn main:app --port 8001 --reload

flask:
	# Assuming core is a FastAPI app
	cd  services/flask_app && \
	. venv/bin/activate && \
	pip install -r requirements.txt && \
	flask run --port 8002