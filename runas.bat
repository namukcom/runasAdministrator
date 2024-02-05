@ECHO OFF

SETLOCAL

TITLE 관리자 권한으로 실행  ver 1.0

%WINDIR%\SYSTEM32\reg.exe add HKLM /f >NUL 2>NUL

REM 관리자가 아닌 경우
if [%errorlevel%] neq [0] (
	powershell -C "Start-Process %~dp0%~nx0 -Verb runAs -wait"
	GOTO LAUNCH
)

REM 관리자 권한인 경우
start %WINDIR%\System32\WindowsPowerShell\v1.0\powershell.exe
GOTO END

:LAUNCH
ECHO 계정설정을 관리자로 실행합니다.
EXIT

:END
ECHO 계정 정책 자동 설정 완료