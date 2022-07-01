# Kill if there is a pypi-server running
running_pypi_server=$(ps -ef | grep pypi-server | grep -v grep | awk '{print $2}')

if [ "${running_pypi_server}" ]; then
    echo  "There is a running pypi-server, now kill it."
    kill ${running_pypi_server}
fi


echo "Starting pypi-server..."
nohup pypi-server run -p 8822 -P . -a . ./packages --overwrite >pypi-server.log &