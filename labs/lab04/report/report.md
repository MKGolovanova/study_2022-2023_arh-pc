---
## Front matter
title: "Отчёт по лабораторной работе №4"
subtitle: "Архитектура компьютера"
author: "Голованова Мария Константиновна"

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
lot: true # List of tables
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
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является освоение процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Задание

В соответствующем каталоге сделать отчёт по лабораторной работе №4 и скомпилировать отчет с использованием Makefile. Проделать то же с отчётом по лабораторной работе №3.

# Теоретическое введение

Markdown — это облегчённый язык  текстовой разметки, созданный с для обозначения форматирования текста с максимальным сохранением его читаемости человеком,являющийся инструментом преобразования кода в языки для продвинутых публикаций (HTML, Rich Text и других). Главной особенностью данного языка является максимально простой синтаксис, который служит для упрощения написания и чтения кода разметки, что, в свою очередь, позволяет легко его корректировать. 

# Выполнение лабораторной работы

## Порядок выполнения лабораторной работы

 Я открыла терминал и перешла в каталог курса, сформированный при выполнении лабораторной работы №3 (рис. [-@fig:001])

![Открытие сформированного при выполнении лабораторной работы №3 каталога](image/Снимок экрана от 2022-10-27 13-51-14.png){ #fig:001 width=70% }

Я обновила локальный репозиторий, скачав изменения из удаленного репозитория с помощью команды git pull, и перешла в каталог с шаблоном отчета по лабораторной работе №4  (рис. [-@fig:002])

![Обновление репозитория и переход в каталог с шаблоном отчета по лабораторной работе №4](image/Снимок экрана от 2022-10-27 12-59-46.png){ #fig:002 width=70% }

Я провела компиляцию шаблона с использованием Makefile, введя команду make (рис. [-@fig:003]).
В результате сгенерировались файлы report.pdf и report.docx.Я открыла полученные файлы и проверила их корректность (рис. [-@fig:004]).

![Компиляция шаблона с использованием Makefile ](image/Снимок экрана от 2022-10-27 13-19-38.png){ #fig:003 width=70% }

![Проверка корректности файлов](image/Снимок экрана от 2022-10-27 13-18-21.png){ #fig:004 width=70% }

Я удалила полученные файлы с использованием Makefile, введя для этого  команду make clean, и проверила, что после этой команды файлы report.pdf и report.docx были удалены (рис. [-@fig:005]).

![Удаление файлов и проверка корректности действия](image/Снимок экрана от 2022-10-27 13-20-54.png){ #fig:005 width=70% }

Я открыла файл report.md c помощью текстового редактора gedit и внимательно изучила структуру этого файла (рис. [-@fig:006]).

![Открытие файла report.md c помощью текстового редактора gedit](image/Снимок экрана от 2022-10-27 14-22-00.png){ #fig:006 width=70% }

Я заполнила и скомпилировала отчет с использованием Makefile, а затем проверила корректность полученных файлов (рис. [-@fig:007], рис. [-@fig:008]).

![Компиляция отчета с использованием Makefile](image/Снимок экрана от 2022-10-28 16-14-27.png){ #fig:007 width=70% }

![Проверка корректности полученных файлов](image/Снимок экрана от 2022-10-28 16-24-37.png){ #fig:008 width=70% }

Я загрузила файлы на Github (рис. [-@fig:009]).

![Загрузка полученных файлов на Github](image/Снимок экрана от 2022-10-28 16-30-00.png){ #fig:009 width=70% }

## Задание для самостоятельной работы

Я сделала в соответствующем каталоге  отчёт по лабораторной работе №3 в формате Markdown (в 3 форматах: pdf, docx и md) (рис. [-@fig:010], рис. [-@fig:011]).

![Создание отчёта по лабораторной работе №3 в формате Markdown](image/Снимок экрана от 2022-10-28 15-55-08.png){ #fig:010 width=70% }

![Проверка корректности полученных файлов](image/Снимок экрана от 2022-10-28 15-58-42.png){ #fig:011 width=70% }

Я загрузила полученные файлы на github (рис. [-@fig:012]).

![Загрузка полученных файлов на github](image/Снимок экрана от 2022-10-28 16-05-56.png){ #fig:012 width=70% }

# Выводы

Я освоиа процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

