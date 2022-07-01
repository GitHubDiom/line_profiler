# kill if there is a pypi-server running
kill $(ps -ef | grep pypi-server | grep -v grep | awk '{print $2}')

echo "pypi-server started"
pypi-server run -p 8822 -P . -a . ./packages