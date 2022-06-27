### 安装
按照 [这里](https://segmentfault.com/a/1190000023759016) 安装本地的pypi-server环境

~/.pypirc 中的 local 地址就是 `upload-package-to-private-pypi` 脚本中上传包的地址

1. pip 安装所需要的包

```pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pypi==1.5.0 ```

2. 利用本地8822端口作为pypi-server端口
```./run-private-pypi.sh```

3. 另起一个终端，执行上传命令
```./upload-package-to-private-pypi.sh```