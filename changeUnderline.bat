@echo off
:: ������ǰĿ¼�µ������ļ�
for %%f in (*-*) do (
    :: ʹ�ñ����滻���ļ����еġ�-���滻Ϊ��_��
    set "oldname=%%f"
    set "newname=%%~nf_%%~xf"
    setlocal enabledelayedexpansion
    set "newname=!oldname:-=_!"
    ren "%%f" "!newname!"
    endlocal
)
echo �ļ������޸���ɣ�
pause
