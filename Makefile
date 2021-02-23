.PHONY: build gh_pages

all: build gh_pages

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
