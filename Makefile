.PHONY: build gh_pages

all: build gh_pages

build:
	sphinx-build -b html ./docs ./docs/_build

gh_pages:
	@echo "commit any changes before switching branch..."
	git add .
	git commit -m "add changes"
	@echo "Updating gh-pages..."
	#sphinx-apidoc -o ./docs/source/ ./pkg
	git checkout gh-pages
	
	cp -r docs/_build/* .; \
	git add .; \
	git commit -m "upd"; \
	git push;
	@echo "Updated gh-pages!"; \
	git checkout main