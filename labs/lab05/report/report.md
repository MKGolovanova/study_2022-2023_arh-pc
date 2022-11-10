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
Я создала текстовый файл с именем hello.asm, открыла этот файл с помощью  текстового редактора gedit и ввела в него следующий текст:(рис. [-@fig:001])

![Название рисунка](image/placeimg_800_600_tech.jpg){ #fig:001 width=70% }

## Транслятор NASM

Я провела компиляцию приведённого выше текста программы «Hello World» и с помощью команды ls проверила, что объектный файл был создан.

Транслятор преобразует текст программы из файла hello.asm в объектный код, который запишется в файл
hello.o. 
 Какое имя имеет объектный файл?

## Расширенный синтаксис командной строки NASM

Выполните следующую команду:
nasm -o obj.o -f elf -g -l list.lst hello.asm Данная команда скомпилирует исходный файл hello.asm в obj.o (опция -o позволяет задать имя объектного файла, в данном случае obj.o), при этомформат выходного файла будет elf, и в него будут включены символы для отладки (опция -g), кроме того, будет создан файл листинга list.lst (опция -l)
С помощью команды ls проверьте, что файлы были созданы.
Для более подробной информации см. man nasm. Для получения списка фор-
матов объектного файла см. nasm -hf.

## Компоновщик LD

Как видно из схемы на рис. 5.3, чтобы получить исполняемую программу,
объектный файл необходимо передать на обработку компоновщику:
ld -m elf_i386 hello.o -o hello
С помощью команды ls проверьте, что исполняемый файл hello был создан.
Компоновщик ld не предполагает по умолчанию расширений для файлов, но
принято использовать следующие расширения:
• o – для объектных файлов;
• без расширения – для исполняемых файлов;
• map – для файлов схемы программы;
• lib – для библиотек.
Ключ -o с последующим значением задаёт в данном случае имя создаваемого исполняемого файла.
Выполните следующую команду:
ld -m elf_i386 obj.o -o main

Какое имя будет иметь исполняемый файл? Какое имя имеет объектный файл из которого собран этот исполняемый файл?

Формат командной строки LD можно увидеть, набрав ld --help. Для получения более подробной информации см. man ld.

## Запуск исполняемого файла
Запустить на выполнение созданный исполняемый файл, находящийся в
текущем каталоге, можно, набрав в командной строке:
./hello

# Задание для самостоятельной работы

1. В каталоге ~/work/arch-pc/lab05 с помощью команды cp создайте копию файла hello.asm с именем lab5.asm
2. С помощью любого текстового редактора внесите изменения в текст программы в файле lab5.asm так, чтобы вместо Hello world! на экран выводилась строка с вашими фамилией и именем.
3. Оттранслируйте полученный текст программы lab5.asm в объектный файл. Выполните компоновку объектного файла и запустите получившийся исполняемый файл.
4. Скопируйте файлы hello.asm и lab5.asm в Ваш локальный репозиторий в каталог ~/work/study/2022-2023/"Архитектура компьютера"/arch-pc/labs/lab05/. Загрузите файлы на Github

# Выводы

Я освоенила процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Список литературы{.unnumbered}

::: {#refs}
:::
