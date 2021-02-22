# sphinx

## Installation

```bash
pip install sphinx
```

## Get started

Run this script and it will create the files for you.

```bash
mkdir docs
cd docs
sphinx-quickstart
```

The `index.rst` is the main file for the home page as well as strcucture of your documentations.

Refer this chichi for rst (reStructuredText) or the actual example `first_page.rxt`

To build the html content, run:

```bash
# sphinx-build -b html <source_dir> <build_dir>, for example
sphinx-build -b html . _build
```

To change the theme, you have to install it mannually,

```bash
pip install sphinx_rtd_theme
```

then, in the `conf.py`:

```python
html_theme = "sphinx_rtd_theme"
```

## Host documentation on github page
