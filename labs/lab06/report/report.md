---
## Front matter
title: "Лабораторная работа №6"
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

Приобретение практических навыков работы в Midnight Commander. Освоение
инструкций языка ассемблера mov и int.

# Задание

Используя Midnight Commander (MC) и языки ассеблера mov и int сделать базовые программы

# Выполнение лабораторной работы

**Шаг 1** 

Открываем midnight commander, и с помощью стрелок клавиатуры и 'enter' переходим в рабочий каталог и создаём каталог lab06, где мы будем проводить дальнейшую работу, также создаём (с помощью клавиши F4) файл lab6-1.asm, и редактируем его

(рис. [-@fig:001])

**Шаг 2**

вводим в lab6-1.asm текст из *листинга 6.1*

(рис. [-@fig:002])

сохраним изменения, и проверим наш файл, все с помощью клавиш F2, F3.

**Шаг 3**

Оттранслируем текст программы в объектный файл. Выполним компоновку объектного файла и запустим получившийся файл:

(рис. [-@fig:003])

**Шаг 4**

Скопируем файл in_out.asm в каталог с файлом lab6-1.asm с помощью функциональной клавиши F5


(рис. [-@fig:004])

Скопируем файл lab6-1.asm с названием lab6-2.asm с помощью клавиши F6

(рис. [-@fig:005])

**Шаг 5**

вводим в lab6-2.asm текст из *листинга 6.2* 

(рис. [-@fig:006])

Выполним компоновку объектного файла и запустим получившийся исполняемый файл (выше), а также заменим подпрограмму sprintLF на sprint, и снова проделаем прошлые шаги, и сравним разницу:

(рис. [-@fig:007])

во втором файле отсутствует функция перевода строки после вывода сообщения на экран, поэтому введённое сообщение будет на одном уровне с "Введите строку:"  

# Задание для самостоятельной работы

**Шаг 1**

Копируем файл lab6-1.asm как lab6-3.asm и изменим его для того, чтобы на экран выводилась введённая строчка:

(рис. [-@fig:008])

Для этого в новом параграфе кода укажем:

1 Системный вызов для записи

2 Стандартный вывод

3 Адрес строки buf1 (ранее введённое сообщение)

4 Длину строки (80)

После вызова инструкции int 80h на экране будет сообщение buf1, что и является введённым текстом 

(рис. [-@fig:009])


**Шаг 2**

Проделаем cхожую работу с копией lab6-2, lab6-4:

(рис. [-@fig:010])

Здесь мы просто вписываем наше сообщение в регистр eax (необходим для работы sprintLF) и используем подпрограмму sprintLF для того чтобы вывести на экран введённое сообщение (buf1)

(рис. [-@fig:009])



![интерфейс mc и файл созданный файл lab6-1](image/1.jpg){ #fig:001 width=90% }

![редактирование и сохранение файла](image/2.jpg){ #fig:002 width=100% }

![компилирование и работа исполняемого файла](image/3.jpg){ #fig:003 width=100% }

![перемещение файла](image/4.jpg){ #fig:004 width=70% }

![копирование файла с новым именем](image/5.jpg){ #fig:005 width=100% }

![код файла lab6-2](image/6.jpg){ #fig:006 width=100% }

![Разница sprint и sprintLF](image/7.jpg){ #fig:007 width=100% }

![код lab6-3](image/8.jpg){ #fig:008 width=100% }

![исполнение новой программы](image/9.jpg){ #fig:009 width=100% }

![код lab6-4](image/10.jpg){ #fig:010 width=100% }


# Выводы

Я освоил инструкции языка ассемблера mov и int, успешно использовал подпрограммы из внешнего файла и использовал midnight commander для навигации по каталогам и созданию и изменению файлов
