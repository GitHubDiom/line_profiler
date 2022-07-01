# Basic env
./build-env.sh

# Run a private pypi-server
./run-private-pypi.sh

# Upload modified line_profiler package to private pypi-server
# One can download it by following command:
# pip3 install --no-cache-dir line_profiler -i http://localhost:8822/simple --trusted-host localhost
./upload-package-to-private-pypi.sh