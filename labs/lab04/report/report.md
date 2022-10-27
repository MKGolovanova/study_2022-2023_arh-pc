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

![Рис.1 Открытие сформированного при выполнении лабораторной работы №3 каталога](Снимок экрана от 2022-10-27 13-51-14.png){ #fig:001 width=70% }

Я обновила локальный репозиторий, скачав изменения из удаленного репозитория с помощью команды git pull, и перешла в каталог с шаблоном отчета по лабораторной работе №4  (рис. [-@fig:002])

![Рис.2 Обновление репозитория и переход в каталог с шаблоном отчета по лабораторной работе №4](Снимок экрана от 2022-10-27 12-59-46.png){ #fig:002 width=70% }

Я провела компиляцию шаблона с использованием Makefile, введя команду make (рис. [-@fig:003]).
В результате сгенерировались файлы report.pdf и report.docx.Я открыла полученные файлы и проверила их корректность (рис. [-@fig:004]).

![Рис.3 Компиляция шаблона с использованием Makefile ](Снимок экрана от 2022-10-27 13-19-38.png){ #fig:003 width=70% }

![Рис.4 Проверка корректности файлов](Снимок экрана от 2022-10-27 13-18-21.png){ #fig:004 width=70% }

Я удалила полученные файлы с использованием Makefile, введя для этого  команду make clean, и проверила, что после этой команды файлы report.pdf и report.docx были удалены (рис. [-@fig:005]).

![Рис.5 Удаление файлов и проверка корректности действия](Снимок экрана от 2022-10-27 13-20-54.png){ #fig:005 width=70% }

Я открыла файл report.md c помощью текстового редактора gedit и внимательно изучила структуру этого файла (рис. [-@fig:006]).

![Рис.6 Открытие файла report.md c помощью текстового редактора gedit](Снимок экрана от 2022-10-27 14-22-00.png){ #fig:006 width=70% }

Я заполнила и скомпилировала отчет с использованием Makefile, а затем проверила корректность полученных файлов (рис. [-@fig:007]).

![Рис.7](){ #fig:007 width=70% }

Я загрузила файлы на Github.

## Задание для самостоятельной работы

Я сделала в соответствующем каталоге  отчёт по лабораторной работе №3 в формате Markdown (в 3 форматах: pdf, docx и md) (рис. [-@fig:007]).

Я загрузила полученные файлы на github.

# Выводы

Я освоиа процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Список литературы{.unnumbered}

::: {#refs}
:::
