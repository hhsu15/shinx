.PHONY: build gh_pages

build:
	sphinx-build -b html ./docs ./docs/_build

gh_pages:
	git checkout gh-pages; \
	mv docs/_build/* .; \
	git add .; \
	git commit -m "upd"; \
	git push