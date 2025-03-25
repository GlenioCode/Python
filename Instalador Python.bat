@echo off
setlocal enabledelayedexpansion

:: Definir a versão do Python desejada
set PYTHON_VERSION=3.12.2
set PYTHON_INSTALLER=python-!PYTHON_VERSION!-amd64.exe
set PYTHON_URL=https://www.python.org/ftp/python/!PYTHON_VERSION!/!PYTHON_INSTALLER!
set INSTALL_PATH=C:\Python!PYTHON_VERSION!

:: Criar uma pasta temporária para o instalador
set TEMP_DIR=%TEMP%\PythonInstaller
if not exist %TEMP_DIR% mkdir %TEMP_DIR%
cd /d %TEMP_DIR%

:: Baixar o instalador do Python
if not exist !PYTHON_INSTALLER! (
    echo Baixando o instalador do Python...
    powershell -Command "Invoke-WebRequest -Uri '!PYTHON_URL!' -OutFile '!PYTHON_INSTALLER!'"
)

:: Executar a instalação silenciosa
if exist !PYTHON_INSTALLER! (
    echo Instalando o Python...
    start /wait !PYTHON_INSTALLER! /quiet InstallAllUsers=1 PrependPath=1 Include_test=0 TargetDir=!INSTALL_PATH!
    echo Python instalado com sucesso!
) else (
    echo Erro ao baixar o instalador do Python.
    pause
    exit /b 1
)

:: Adicionar o Python ao PATH
setx PATH "%INSTALL_PATH%;%INSTALL_PATH%\Scripts;%PATH%" /M

:: Verificar se o Python foi instalado corretamente
cmd /c "%INSTALL_PATH%\python.exe --version"
if %errorlevel% neq 0 (
    echo Erro ao instalar o Python.
    pause
    exit /b 1
)

echo Instalacao concluida. Reinicie o terminal para aplicar as mudancas.
pause
endlocal
