---
## Front matter
title: "Лабораторная работа №4"
author: "Руслан Шухратович Исмаилов"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
lofTitle: "Список иллюстраций"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является освоение процедуры оформления отчетов с помощью
легковесного языка разметки Markdown.

# Задание

Успешно использовать Markdown для оформления отчёта, а также ознакомиться с командой Make

# Выполнение лабораторной работы

**Шаг 1** 
Переходим в наш рабочий каталог, и используя команду
```
git pull
```
Обновляем локальный репозиторий

**Шаг 2**
Убедившись, что наши файлы совпадают с файлами на github, используем команду 
```
make 
```
Для создания report.pdf и report.docx

(рис. [-@fig:001])

**Шаг 3**
Убедимся, что файлы созданы, откроем папку и проверим содержание двух файлов отчёта, и внимательно изучим их. 

(рис. [-@fig:002])

(рис. [-@fig:003])

**Шаг 4**
Используем 
```
make clean
```
для того, чтобы удалить созданные файлы, и проверим:

(рис. [-@fig:004])

(рис. [-@fig:005])

**Шаг 5**
Создаём файл отчёта данной лабораторной работы с помощью ***Markdown***

**Шаг 6**
Загружаем файлы на Github с помощью команд git 



![Успешно применённая команда Make](image/Make.jpg){ #fig:001 width=90% }

![Папка со сгенерированными файлами отчёта](image/folder.jpg){ #fig:002 width=100% }

![Report.pdf](image/shablon.jpg){ #fig:003 width=100% }

![Успешно применённая команда Make clean](image/Make_clean.jpg){ #fig:004 width=70% }

![Папка без файлов отчёта](image/folder_empty.jpg){ #fig:005 width=100% }

# Выводы

Я смог успешно сделать отчёт с помощью Markdown, и сгенерировать с помощью Makefile

