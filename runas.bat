@ECHO OFF

SETLOCAL

TITLE ������ �������� ����  ver 1.0

%WINDIR%\SYSTEM32\reg.exe add HKLM /f >NUL 2>NUL

REM �����ڰ� �ƴ� ���
if [%errorlevel%] neq [0] (
	powershell -C "Start-Process %~dp0%~nx0 -Verb runAs -wait"
	GOTO LAUNCH
)

REM ������ ������ ���
start %WINDIR%\System32\WindowsPowerShell\v1.0\powershell.exe
GOTO END

:LAUNCH
ECHO ���������� �����ڷ� �����մϴ�.
EXIT

:END
ECHO ���� ��å �ڵ� ���� �Ϸ�