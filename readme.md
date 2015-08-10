# Viewlang

Viewlang это среда трехмерной визуализации на основе языка QML для веб-браузеров. 

## Online-версия
Размещена по адресу: http://viewlang.ru

## Настройка локальной версии

1. Запустить под администратором
```
viewlang/setup_vl_assoc.cmd
```
что создаст ассоциацию файлов *.vl для запуска Chrome для просмотра указанного VL файла. Хром должен быть в PATH.

2. Настроить ярлык запуска хрома, добавив в аргументы запуска флаг `--allow-file-access-from-files`
Затем надо перезагрузить Хром, если он запущен. Т.к когда хромы уже работают, запуск новой вкладки 
(из пункта 1) будет использовать флаги тех хромов, что уже запущены.

## Примеры
См. ./examples

## Как создать свою сцену

Создать файл _имя_.vl с содержанием сцены, сообразно примерам, например:
```
Scene {
  Points {
    positions: [0,0,0, 1,1,1, 2,2,2 ]
  }
}
```
и запустить этот файл enter-ом.

## Как отлаживать
1. Ошибки пишутся в консоль браузера, Ctrl+Shift+J.
2. Поменяли файл сцены - обновили страницу в браузере.

(с) 2015 Павел Васёв,
при научном руководстве В.Л. Авербуха.
