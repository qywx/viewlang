﻿@echo off
rem Вообще веб-сервер не обязателен, например в windows все работает и с file:// (см readme.md).
rem Установка: 
rem 1. Установить node https://nodejs.org/en/
rem 2. Установить вебсервер: npm install http-server -g

echo запускаем...
pushd %~dp0
start http-server -p 85
popd
