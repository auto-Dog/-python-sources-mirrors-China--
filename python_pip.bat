@echo off
@chcp 65001
::仅限windows用户
set /p env_nam=输入环境名称：
CALL conda activate %env_nam%
set /p nam=输入要安装的包名称：
echo.
echo 选择安装站点:
echo.
echo 1.国外站
echo. 
echo 2.清华站
echo.
echo 3.交大站
echo.
echo 4.豆瓣站
echo.
echo 5.阿里站
echo.
echo 6.中科大站
echo.
set /p s=输入对应数字：

if %s%==1 goto A

if %s%==2 goto B

if %s%==3 goto C

if %s%==4 goto D

if %s%==5 goto E

if %s%==6 goto F

:A
pip install  %nam%
goto ENDbat
:B
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple %nam%
goto ENDbat
:C
pip install -i https://mirrors.sjtug.sjtu.edu.cn/pypi/web/simple %nam%
goto ENDbat
:D
pip install -i https://pypi.douban.com/simple %nam%
goto ENDbat
:E
pip install -i https://mirrors.aliyun.com/pypi/simple %nam%
goto ENDbat
:F
pip install -i https://pypi.mirrors.ustc.edu.cn/simple %nam%
goto ENDbat
:ENDbat
pause
