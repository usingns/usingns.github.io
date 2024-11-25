@echo off
:: 延迟变量
setlocal enabledelayedexpansion

:: 提示
set /p custom_text=请输入要替换第三部分的自定义文本: 

:: 遍历当前目录下符合 *_*_*.* 格式的文件
for %%f in (*_*_*.*) do (
    :: 提取文件名和扩展名
    set "filename=%%~nf"
    set "extension=%%~xf"

    :: 用 "_" 分割文件名的三部分
    for /f "tokens=1,2,3 delims=_" %%a in ("!filename!") do (
        set "part1=%%a"
        set "part2=%%b"
        set "part3=%%c"
    )

    :: 修改第三部分为用户输入的自定义文本
    set "newname=!part1!_!part2!_!custom_text!!extension!"

    :: 重命名文件
    ren "%%f" "!newname!"
)

echo 文件名修改完成！
pause
