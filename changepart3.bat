@echo off
:: �ӳٱ���
setlocal enabledelayedexpansion

:: ��ʾ
set /p custom_text=������Ҫ�滻�������ֵ��Զ����ı�: 

:: ������ǰĿ¼�·��� *_*_*.* ��ʽ���ļ�
for %%f in (*_*_*.*) do (
    :: ��ȡ�ļ�������չ��
    set "filename=%%~nf"
    set "extension=%%~xf"

    :: �� "_" �ָ��ļ�����������
    for /f "tokens=1,2,3 delims=_" %%a in ("!filename!") do (
        set "part1=%%a"
        set "part2=%%b"
        set "part3=%%c"
    )

    :: �޸ĵ�������Ϊ�û�������Զ����ı�
    set "newname=!part1!_!part2!_!custom_text!!extension!"

    :: �������ļ�
    ren "%%f" "!newname!"
)

echo �ļ����޸���ɣ�
pause
