PYTHON3 := $(shell which python3)

build:
	cd priv/recipe_scrapers && $(PYTHON3) -m venv .venv && source .venv/bin/activate && pip install -r requirements.txt
