# Task 1

## Create files hierarchy

cd ~/csbasics/lab0

mkdir Ahmed
cd Ahmed


touch exploud3

mkdir golem3
cd golem3
mkdir lombre
mkdir unfezant
touch spoink
touch gastrodon
mkdir starmie
touch gigalith
cd ..

touch parasect6

touch reuniclus7

mkdir skiploom7
cd skiploom7
touch gligar
mkdir cottonee
mkdir drilbur
touch clefairy
cd ..

mkdir slaking1
cd slaking1
mkdir snover
touch togekiss
mkdir chansey
mkdir nidoranF
touch electabuzz
cd ..

## Fill files with content

echo "Тип диеты  Herbivore" > exploud3

echo "Ходы  Body Slam Bounce Covet" > golem3/spoink
echo "Double-Edge heal Bell Icy Wind Iron Tail Magic Coat Recycle Role Play" >> golem3/spoink
echo "Shock Wave Signal Beam Skill Swap Sleep Talk Snatch Snore Swift Trick" >> golem3/spoink
echo "Zen Headbutt" >> golem3/spoink

echo "Живет  Beach Ocean" > golem3/gastrodon

echo "weigth=573.2" > golem3/gigalith
echo "height=67.0 atk=14 def=13" >> golem3/gigalith

echo "Живет  Cave" > parasect6
echo "Rainforest" >> parasect6

echo "Тип диеты  Omnivore" > reuniclus7

echo "weigth=142.9" > skiploom7/gligar
echo "height=43.0 atk=8 def=11" >> skiploom7/gligar

echo "Тип диеты" > skiploom7/clefairy
echo "Herbivore" >> skiploom7/clefairy

echo "Способности  Last Chance Mach Speed Serene Grace" > slaking1/togekiss
echo "Hustle" >> slaking1/togekiss

echo "Развитые способности  Vital Spirit" > slaking1/electabuzz

# Task 2
## Setup permissions
setperms() {
    chmod 620 exploud3
    chmod 312 golem3
    chmod 363 golem3/lombre
    chmod 550 golem3/unfezant
    chmod 600 golem3/spoink
    chmod u=,g=r,o=rw golem3/gastrodon
    chmod a=wx golem3/starmie
    chmod a=r golem3/gigalith
    chmod ug=r,o= parasect6
    chmod 440 reuniclus7
    chmod 361 skiploom7
    chmod 440 skiploom7/gligar
    chmod 337 skiploom7/cottonee
    chmod u=rx,go=rwx skiploom7/drilbur
    chmod u=rw,g=w,o= skiploom7/clefairy
    chmod 771 slaking1
    chmod 570 slaking1/snover
    chmod 440 slaking1/togekiss
    chmod u=rwx,go=wx slaking1/chansey
    chmod 576 slaking1/nidoranF
    chmod 062 slaking1/electabuzz
}
setperms

# Task 3
## Copy files and create links

## Give back permissions temporarily
chmod -R 700 *

ln -s exploud3 skiploom7/clefairyexploud

ln -s slaking1 Copy_39

cp reuniclus7 golem3/unfezant/reuniclus

cp parasect6 golem3/gigalithparasect

ln exploud3 slaking1/electabuzzexploud

cp -R slaking1 golem3/starmie

touch exploud3_23
cat skiploom7/clefairy > exploud3_23
cat slaking1/electabuzz >> exploud3_23

## Return to the permissions needed
setperms

## Print out file hierarchy after task 3
echo 'Task 3'
ls -lR

# Task 4
## Do basic operations based on tasks

### 1. Подсчитать количество символов содержимого файлов: gastrodon, gigalith, gligar, clefairy, 
###    результат записать в файл в директории /tmp, подавить вывод ошибок доступа
echo 'Task 4.1'
touch /tmp/wordcount1
wc -m golem3/gastrodon >> /tmp/wordcount1 
2>>/dev/null
wc -m golem3/gigalith >> /tmp/wordcount1 2>>/dev/null
wc -m skiploom7/gligar >> /tmp/wordcount1 2>>/dev/null
wc -m skiploom7/clefairy >> /tmp/wordcount1 2>>/dev/null

cat /tmp/wordcount1

### 2. Вывести три последних элемента рекурсивного списка имен и атрибутов файлов в директории lab0, 
###    содержащих строку "ga", список отсортировать по возрастанию даты модификации файла, подавить 
###    вывод ошибок доступа
echo 'Task 4.2'
ls -lturd **/*ga* 2>/dev/null | tail -3

### 3. Вывести содержимое файлов: gligar, clefairy, togekiss с номерами строк, строки отсортировать 
###    по имени a->z, подавить вывод ошибок доступа
echo 'Task 4.3'
cat -n skiploom7/gligar 2>/dev/null | sort -k 2
cat -n skiploom7/clefairy 2>/dev/null | sort -k 2
cat -n slaking1/togekiss 2>/dev/null | sort -k 2

### 4. Вывести два последних элемента рекурсивного списка имен и атрибутов файлов в директории lab0, 
### заканчивающихся на символ 'e', список отсортировать по возрастанию даты модификации файла, ошибки 
### доступа перенаправить в файл в директории /tmp
echo 'Task 4.4'
ls -ltrd **/*e 2>/tmp/error4 | tail -2

### 5. Вывести два последних элемента рекурсивного списка имен и атрибутов файлов в директории lab0, 
### содержащих строку "le", список отсортировать по убыванию даты доступа к файлу, ошибки доступа не 
### подавлять и не перенаправлять
echo 'Task 4.5'
ls -ltud **/*le* | tail -2

### 6. Вывести рекурсивно список имен и атрибутов файлов в директории lab0, содержащих строку "se", 
### список отсортировать по возрастанию даты изменения записи о файле, подавить вывод ошибок доступа
echo 'Task 4.6'
ls -ltrd **/*se* 2>/dev/null

# Task 5
## Delete files and directories
## Give back permissions to delete files
chmod u+w parasect6
chmod u+r skiploom7
chmod -R u+rw golem3

rm parasect6
rm golem3/gigalith
rm skiploom7/clefairyexplo*
rm slaking1/electabuzzexplo*
rm -r golem3
rm -r slaking1/chansey
