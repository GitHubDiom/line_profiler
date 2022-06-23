python setup.py check
python setup.py sdist bdist_wheel

twine upload -r local dist/*