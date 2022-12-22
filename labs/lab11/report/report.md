---
## Front matter
title: "Лабораторная работа №11"
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

Приобретение навыков написания программ для работы с файлами.

# Задание



# Теоретическое введение



# Выполнение лабораторной работы

Я создала каталог для программам лабораторной работы No 11, перешла в него и создайте файл lab11-1.asm и readme.txt (рис. [-@fig:001])

![Создание каталога для программам лабораторной работы №11 и файла lab11-1.asm](image/Снимок экрана от 2022-12-22 16-52-29.png){ #fig:001 width=70% }

Я ввела в файл lab11-1.asm текст программы из листинга 11.1 (Программа записи в файл сообщения) (рис. [-@fig:002]). 

![Введение текста программы из листинга 11.1](image/Снимок экрана от 2022-12-22 17-07-46.png){ #fig:002 width=70% }

Я создала исполняемый файл и проверила его работу (рис. [-@fig:003]).

![Создание, запуск и проверка исполняемого файла lab11-1](image/Снимок экрана от 2022-12-22 17-46-29.png){ #fig:003 width=70% }

 С помощью команды chmod я изменила права доступа к исполняемому файлу lab11-1, запретив его выполнение (рис. [-@fig:004]), и попыталась выполнить файл. Так как я ограничила права доступа к нему, то файл не может быть запущен.

![Запрещение выполнения файла lab11-1 с помощью команды chmod](image/Снимок экрана от 2022-12-22 19-17-13.png){ #fig:004 width=70% }

С помощью команды chmod измените права доступа к файлу lab11-1.asm с исходным текстом программы, добавив права на исполнение (рис. [-@fig:005]). Попытайтесь выполнить его и объясните результат.

![ ](image/Снимок экрана от 2022-12-22 19-18-04.png){ #fig:005 width=70% }

Предоставить права доступа к файлу readme.txt в соответствии с вариантом №19 в таблице 11.4. Проверить правильность выполнения с помощью команды ls -l.

 (рис. [-@fig:00])

![ ](image/){ #fig:00 width=70% }

(рис. [-@fig:00])

![ ](image/){ #fig:00 width=70% }

# Выполнение самостоятельной  работы

Напишите программу работающую по следующему алгоритму:
• Вывод приглашения “Как Вас зовут?”
• ввести с клавиатуры свои фамилию и имя
• создать файл с именем name.txt
• записать в файл сообщение “Меня зовут”
• дописать в файл строку введенную с клавиатуры
• закрыть файл
Создать исполняемый файл и проверить его работу. Проверить наличие файла
и его содержимое с помощью команд ls и cat.
 
 (рис. [-@fig:00])

![ ](image/){ #fig:00 width=70% }

 (рис. [-@fig:00])

![ ](image/){ #fig:00 width=70% }

# Выводы



# Список литературы{.unnumbered}

::: {#refs}
:::
