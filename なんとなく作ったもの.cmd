@echo off
cd %~dp0
color 0a
title Git��Ɨp
:a
cls
echo ��Ƃ�I��ł��������B
echo.
echo 0.�I�� 1.�t�@�C���ǉ� 2.��Ԃ̊m�F 3. �R�~�b�g 4.���O�̊m�F
choice /c 01234
if errorlevel 5 goto:log
if errorlevel 4 goto:commit
if errorlevel 3 goto:status
if errorlevel 2 goto:add
if errorlevel 1 exit /b
goto:a

:add
echo �ǉ�����t�@�C��������͂��Ă��������B
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
echo ���b�Z�[�W����͂��Ă��������B
set /p M=�����ɓ��́F
git commit -m %M%
pause >nul
goto:a

:log
git log
pause >nul
goto:a