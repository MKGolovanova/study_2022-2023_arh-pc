---
## Front matter
title: "Лабораторная работа №5"
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

Освоение процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Задание



# Теоретическое введение



# Выполнение лабораторной работы
## Программа Hello world!

 Я создала каталог для работы с программами на языке ассемблера NASM:(рис. [-@fig:001])
mkdir ~/work/arch-pc/lab05
Я перешла в созданный каталог.
cd ~/work/arch-pc/lab05
Я создала текстовый файл с именем hello.asm
touch hello.asm
открыла этот файл с помощью  текстового редактора gedit
gedit hello.asm
и введите в него следующий текст:(рис. [-@fig:001])

![Название рисунка](image/placeimg_800_600_tech.jpg){ #fig:001 width=70% }

## Транслятор NASM

NASM превращает текст программы в объектный код. Например, для компиля-
ции приведённого выше текста программы «Hello World» необходимо написать
Архитектура ЭВМ
nasm -f elf hello.asm
Если текст программы набран без ошибок, то транслятор преобразует текст
программы из файла hello.asm в объектный код, который запишется в файл
hello.o. Таким образом, имена всех файлов получаются из имени входного
файла и расширения по умолчанию. При наличии ошибок объектный файл не
создаётся, а после запуска транслятора появятся сообщения об ошибках или
предупреждения.
С помощью команды ls проверьте, что объектный файл был создан. Какое
имя имеет объектный файл?
NASM не запускают без параметров. Ключ -f указывает транслятору, что тре-
буется создать бинарные файлы в формате ELF. Следует отметить, что формат
elf64 позволяет создавать исполняемый код, работающий под 64-битными вер-
сиями Linux. Для 32-битных версий ОС указываем в качестве формата просто
elf.
NASM всегда создаёт выходные файлы в текущем каталоге

## Расширенный синтаксис командной строки NASM

# Выводы

Я освоенила процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Список литературы{.unnumbered}

::: {#refs}
:::
