.PHONY: clean api build gh_pages push

all: clean api build gh_pages push


clean:
	rm -rf docs/_build
	rm -rf docs/source

api:
	sphinx-apidoc -o docs/source/ ./pkg	

build:
	sphinx-build -b html ./docs ./docs/_build

push:
	ghp-import docs/_build -p -n

# gh_pages:
# 	@echo "Updating gh-pages..."
# 	cp -r docs/_build/* ./gh-pages/sphinx
# 	cd gh-pages/sphinx; \
# 	git add .; \
# 	git commit -m "upd"; \
# 	git push
# 	@echo "Deployed!"
