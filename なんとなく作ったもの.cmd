@echo off
cd %~dp0
color 0a
title Git作業用
:a
cls
echo 作業を選んでください。
echo.
echo 0.終了 1.ファイル追加 2.状態の確認 3. コミット 4.ログの確認
choice /c 01234
if errorlevel 5 goto:log
if errorlevel 4 goto:commit
if errorlevel 3 goto:status
if errorlevel 2 goto:add
if errorlevel 1 exit /b
goto:a

:add
echo 追加するファイル名を入力してください。
set /p fname=
git add %fname%
goto:a

:status
cls
git status
pause >nul
goto:a

:commit
cls
echo メッセージを入力してください。
set /p M=ここに入力：
git commit -m %M%
pause >nul
goto:a

:log
git log
pause >nul
goto:a