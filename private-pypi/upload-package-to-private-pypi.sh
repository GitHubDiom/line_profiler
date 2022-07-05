cd ..
PY_VERSION=`python -V 2>&1|awk '{print $2}'|awk -F '.' '{print $1$2}'`

if (( $PY_VERSION != 37 ))
then
    echo "Please using python 3.7.x for building this package"
    exit
fi

python setup.py check
python setup.py sdist bdist_wheel

twine upload -r local dist/*
cd -