# Task 1

## Create files hierarchy

echo 'By: Ahmed Elsaid'
echo 'variant№:1001'

mkdir lab0
cd lab0

touch electivire3

mkdir kabuto3
cd kabuto3
mkdir chansey
mkdir azurill
mkdir charmander
cd ..

touch lanturn3

touch luxray8

mkdir tyrogue7
cd tyrogue7
mkdir sandslash
touch stoutland
touch carracosta
cd ..

mkdir zorua9
cd zorua9
mkdir shieldon
touch karrablast
mkdir graveler
cd ..


## Fill files with content

echo "Ходы  Body Slam Bounce Covet Double-Edge Fire Punch" > electivire3
echo "Focus Punch Helping Hand Ice Punch Iron Tail Low Kick Magnet Rise" >> electivire3
echo "Mega Kick Mega Punch Mud-Slap Rock Climb Seismic Toss Signal Beam" >> electivire3
echo "Sleep Talk Snore Swift Thunderpunch Uproar" >> electivire3

echo "Способности" > lanturn3
echo "Torrent Overcharge Volt Absorb Illuminate" >> lanturn3

echo "Живет Cave" > luxray8
echo "Grassland Mountain" >> luxray8

echo "Тип Покемона NORMAL" > tyrogue7/stoutland
echo "NONE" >> tyrogue7/stoutland

echo "Развитые Способности Swift Swim" > tyrogue7/carracosta

echo "Тип" > zorua9/karrablast 
echo "покемона BUG NONE" >> zorua9/karrablast 

# Task 2
## Setup permissions
setperms() {
    chmod 044 electivire3
    chmod 566 kabuto3
    chmod 551 kabuto3/chansey
    chmod 335 kabuto3/azurill
    chmod 521 kabuto3/charmander
    chmod 004 lanturn3
    chmod 066 luxray8
    chmod 537 tyrogue7
    chmod 330 tyrogue7/sandslash
    chmod 046 tyrogue7/stoutland
    chmod 404 tyrogue7/carracosta
    chmod 335 zorua9
    chmod 577 zorua9/shieldon
    chmod 640 zorua9/karrablast
    chmod 537 zorua9/graveler
}
setperms

# Task 3
chmod -R 700 *

ln -s electivire3 zorua9/karrablastelectivire
ln luxray8 tyrogue7/stoutlandluxray

touch lanturn3_40

cat tyrogue7/carracosta > lanturn3_40
cat tyrogue7/carracosta >> lanturn3_40
cp luxray8 tyrogue7/carracostaluxray
rsync -Rr kabuto3  kabuto3/charmander
cp electivire3 tyrogue7/sandslash
ln -s kabuto3  Copy_95
## Return to the permissions needed
setperms

## Print out file hierarchy after task 3
echo 'Task 3'
ls -lR

# task 4
## Подсчитать количество символов содержимого файлов: stoutland, carracosta, результат записать  в файл в директории /tmp, ошибки доступа перенаправить в файл в директории /tmp

echo 'Task 4.1'

touch /tmp/wordcount

chmod 746 tyrogue7/stoutland
wc -m tyrogue7/stoutland  >>/tmp/wordcount  2>>/tmp/error1
wc -m tyrogue7/carracosta  >>/tmp/wordcount  2>>/tmp/error1
chmod 746 tyrogue7/stoutland
cat /tmp/wordcount
### task 4.2
#. Вывести три последних элемента рекурсивного списка имен и атрибутов файлов в директории lab0,
#список отсортировать по возрастанию количества жестких ссылок, подавить вывод ошибок доступа
echo 'Task 4.2'
    chmod u+w  zorua9
    chmod u+w  zorua9/graveler
ls -l | tail -3 | sort -k2  2>>/dev/null

# task 4.3
#Рекурсивно вывести содержимое файлов с номерами строк из директории lab0,
#  имя которых заканчивается на 'r', строки отсортировать по имени a->z, ошибки доступа не подавлять и не перенаправлять
 echo 'task 4.3'
ls -ltrd **/*r | sort -k9

# task 4.4
#Вывести два последних элемента рекурсивного списка имен и атрибутов файлов в директории lab0, 
# заканчивающихся на символ 'a', список отсортировать по возрастанию даты модификации файла, ошибки  доступа перенаправить в файл в директории /tmp
echo 'Task 4.4'
ls -ltrd **/*a 2>/tmp/error4 | tail -2

# task 4.5
#Вывести рекурсивно список имен файлов в директории zorua9, список отсортировать по имени a->z, подавить вывод ошибок доступа
echo 'task 4.5'
chmod u+rw  zorua9
ls -l zorua9 | sort   2>>/dev/null

# task 4.6
#Вывести содержимое файла luxray8 с номерами строк, исключить строки, заканчивающиеся на 'm', ошибки доступа не подавлять и не перенаправлять
echo 'task 4.6'
chmod u+rw  luxray8
sed '/m/d' luxray8 | nl 

# Task 5
## Delete files and directories
## Give back permissions to delete files
#chmod u+w electivire3
echo 'task 5'
chmod u+w electivire3
chmod u+w kabuto3
chmod u+w kabuto3/chansey
chmod u+w kabuto3/charmander
chmod u+w kabuto3/azurill

rm -f electivire3
rm zorua9/karrablast
rm Copy_95
ln -f tyrogue7/stoutlandluxray
rm  -r kabuto3
rmdir zorua9/shieldon

echo 'DONE'
		
