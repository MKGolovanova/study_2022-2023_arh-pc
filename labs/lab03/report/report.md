---
## Front matter
title: "Отчёт по лабораторной работе №3"
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
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является изучить идеологию и применение средств контроля
версий и приобрести практические навыки по работе с системой git.

# Выполнение лабораторной работы

## Настройка github

Я создала учётную запись на сайте https://github.com/ и заполнила основные
данные (рис. [-@fig:001]).

![Учётная запись на сайте https://github.com/](image/Снимок экрана от 2022-10-27 14-44-36.png){ #fig:001 width=70% }

## Базовая настройка git
Я сделала предварительную конфигурацию git. Открыла терминал и ввела следующие команды, указав имя и email владельца репозитория (рис. [-@fig:002]):
git config --global user.name "<Name Surname>"
git config --global user.email "<work@mail>"

![Предварительная конфигурация git](image/Снимок экрана от 2022-10-27 14-46-01.png){ #fig:002 width=70% }

Я настроила utf-8 в выводе сообщений git (рис. [-@fig:003]).

![Настрйка utf-8 в выводе сообщений git](image/Снимок экрана от 2022-10-27 14-46-43.png){ #fig:003 width=70% }

Я задала имя начальной ветки (master), параметр autocrlf и параметр safecrlf (рис. [-@fig:004]).

![Имя начальной ветки(master), параметр autocrlf и параметр safecrlf](image/Снимок экрана от 2022-10-27 14-47-18.png){ #fig:004 width=70% }

## Создание SSH ключа

Для последующей идентификации пользователя на сервере репозиториев я сгенерировала пару ключей (приватный и открытый) (рис. [-@fig:005]):
ssh-keygen -C "Имя Фамилия <work@mail>"
Ключи сохранились в каталоге ~/.ssh/.

![Генерация приватного и открытого ключей](image/Снимок экрана от 2022-10-27 14-48-11.png){ #fig:005 width=70% }

Потом я загрузла сгенерированный открытый ключ. Для этого зашла на сайт http://github.org/ под своей учётной записью и перешла в меню Setting (рис. [-@fig:006]), выбрала в боковом меню SSH and GPG keys и нажала кнопку New SSH key (рис. [-@fig:007]).

![Переход в меню Setting](image/Снимок экрана от 2022-10-27 14-48-33.png){ #fig:006 width=50% }

![Выбор кнопки New SSH key в меню SSH and GPG keys](image/Снимок экрана от 2022-10-27 14-49-33.png){ #fig:007 width=70% }

Скопировав из локальной консоли ключ в буфер обмена cat ~/.ssh/id_rsa.pub | xclip -sel clip (рис. [-@fig:008]), я вставила ключ в появившееся на сайте поле и указала для ключа имя (Title) (рис. [-@fig:009]).

![Копирование ключа из локальной консоли в буфер обмена](image/Снимок экрана от 2022-10-27 14-50-00.png){ #fig:008 width=70% }

![Вставление ключа в появившееся на сайте поле и указание для него имени (Title)](image/Снимок экрана от 2022-10-27 14-50-24.png){ #fig:009 width=70% }

## Создание рабочего пространства и репозитория курса на основе шаблона

Я открыла терминал и создала каталог для предмета «Архитектура компьютера» (рис. [-@fig:010]).

![Создание каталога для предмета «Архитектура компьютера»](image/Снимок экрана от 2022-10-27 14-50-41.png){ #fig:010 width=70% }

## Создание репозитория курса на основе шаблона
Я перешла на станицу репозитория с шаблоном курса https://github.com/yamadharma/course-directory-student-template и выбрала Use this template (рис. [-@fig:011]).

![Выбор шаблона](image/Снимок экрана от 2022-10-27 14-51-05.png){ #fig:011 width=70% }

В открывшемся окне я задала имя репозитория (Repository name) study_2022–2023_arh-pc и создала репозиторий (Create repository from template) (рис. [-@fig:012]).

![Создание репозитория](image/Снимок экрана от 2022-10-27 14-51-25.png){ #fig:012 width=70% }

Я открыла терминал, перешла в каталог курса и клонировала созданный репозиторий (рис. [-@fig:013]).

![Клонирование репозитория](image/Снимок экрана от 2022-10-27 14-51-45.png){ #fig:013 width=70% }

Ссылку для клонирования я скопировала на странице созданного репозитория Code -> SSH (рис. [-@fig:014]).

![Ссылка для клонирования репозитория](image/Снимок экрана от 2022-10-27 14-52-03.png){ #fig:014 width=70% }

## Настройка каталога курса

Я перешла в каталог курса, удалила лишние файлы и создала необходимые каталоги (рис. [-@fig:015]).

![Удалиление лишних файлов и создание необходимых каталогов в каталоге курса](image/Снимок экрана от 2022-10-27 14-52-27.png){ #fig:015 width=70% }

Я отправила файлы на сервер (рис. [-@fig:016], рис. [-@fig:017], рис. [-@fig:018]) и проверила правильность создания иерархии рабочего пространства в локальном репозитории и на странице github (рис. [-@fig:019]).

![Отправка файлов на сервер (часть 1)](image/Снимок экрана от 2022-10-27 14-52-48.png){ #fig:016 width=70% }

![Отправка файлов на сервер (часть 2)](image/Снимок экрана от 2022-10-27 14-53-07.png){ #fig:017 width=70% }

![Отправка файлов на сервер (часть 3)](image/Снимок экрана от 2022-10-27 14-53-51.png){ #fig:018 width=70% }

![Проверка правильности создания иерархии рабочего пространства в локальном репозитории и на странице github](image/Снимок экрана от 2022-10-27 14-54-11.png){ #fig:019 width=70% }

# Выполнение самостоятельной работы

3.1. Я создала отчет по выполнению лабораторной работы в соответствующем каталоге рабочего пространства (labs>lab03>report) (рис. [-@fig:020]).

![Копирование отчёта по выполнению лабораторной работы](image/Снимок экрана от 2022-10-27 14-54-29.png){ #fig:020 width=70% }

3.2. Я скопировала отчеты по выполнению предыдущих лабораторных работ в соответствующие каталоги созданного рабочего пространства (рис. [-@fig:021]).

![Копирование отчётов по выполнению предыдущих лабораторных работ](image/Снимок экрана от 2022-10-27 14-54-47.png){ #fig:021 width=70% }

3.3. Я загрузила файлы на github (рис. [-@fig:022]).

![Загрузка файлов на github](image/Снимок экрана от 2022-10-27 14-55-06.png){ #fig:022 width=70% }

# Выводы

Я изучила идеологию и применение средств контроля версий и приобрела практические навыки по работе с системой git.


