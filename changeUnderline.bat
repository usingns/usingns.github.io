@echo off
:: 遍历当前目录下的所有文件
for %%f in (*-*) do (
    :: 使用变量替换将文件名中的“-”替换为“_”
    set "oldname=%%f"
    set "newname=%%~nf_%%~xf"
    setlocal enabledelayedexpansion
    set "newname=!oldname:-=_!"
    ren "%%f" "!newname!"
    endlocal
)
echo 文件名已修改完成！
pause
