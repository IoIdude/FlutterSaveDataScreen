# Практическая работа №5

## Тема: реализовать передачу данных между экранами

### Цель работы: реализовать передачу данных между экранами. Реализовать передачу данных через параметр arguments и сохранение данных в SharedPrefrences. Реализовать восстановление данных после закрытия приложения. Если есть данные в SharedPrefrences открыть 2 экран, если данных нет то открыть 1 экран. Так же реализовать восстановление темы приложения.

### Ход работы:

#### Для начала работы добавим библиотеку shared_preferences

#### Создадим файл first_page. Код в данном файле позволяет передавать данные между формами, менять тему приложения:

![alt text](https://github.com/IoIdude/FlutterSaveDataScreen/blob/main/pref/1.png)

#### Файл second_page реализует считывание данных из мапа, переданного первой формой и позволяет сохранить данные в локальное хранилище по кнопке, либо очистить данные хранилища. При очистке данных хранилища - пользователя перекидывает на first_page, если данных в локальном хранилище вовсе не было, то форма second_page не откроется:

![alt text](https://github.com/IoIdude/FlutterSaveDataScreen/blob/main/pref/2.png)

#### Класс Themes хранит статичные цвета двух тем:

![alt text](https://github.com/IoIdude/FlutterSaveDataScreen/blob/main/pref/3.png)

#### Файл main запускает первое окно и содержит маршрутизацию между окнами. Также устанавливает первоначально тему по-умолчанию:

![alt text](https://github.com/IoIdude/FlutterSaveDataScreen/blob/main/pref/4.png)

#### Результат работы первого окна:

![alt text](https://github.com/IoIdude/FlutterSaveDataScreen/blob/main/pref/5.png)

#### Результат работы второго окна:

![alt text](https://github.com/IoIdude/FlutterSaveDataScreen/blob/main/pref/6.png)

### Вывод: в ходе парктической работы я реализовал передачу данных между экранами. Реализовал восстановление данных и темы после закрытия приложения.
