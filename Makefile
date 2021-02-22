.PHONY: build gh_pages

build:
	sphinx-build -b html ./docs ./docs/_build

gh_pages:
	@echo "commit any changes before switching branch..."
	git commit -am "add changes"
	@echo "Updating gh-pages..."
	git checkout gh-pages
	cp -r docs/_build/* .; \
	git add .; \
	git commit -m "upd"; \
	git push; \
	@echo "Updated gh-pages!"; \
	git checkout main