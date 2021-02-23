.PHONY: api build gh_pages

all: api build gh_pages

api:
	sphinx-apidoc -o docs/source/ ./pkg	

build:
	sphinx-build -b html ./docs ./docs/_build

gh_pages:
	@echo "Updating gh-pages..."
	cp -r docs/_build/* ./gh-pages/sphinx
	cd gh-pages/sphinx; \
	git add .; \
	git commit -m "upd"; \
	git push
	@echo "Deployed!"
