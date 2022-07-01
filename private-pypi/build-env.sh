bash -c 'cat > ~/.pypirc << EOF 
[distutils]
index-servers =
  local

[local]
repository:http://localhost:8822
username:
password:
EOF'


pip install -r requirements_pypi.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
mkdir -p ./packages