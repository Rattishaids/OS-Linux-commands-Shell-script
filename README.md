# OS-Linux-commands-Shell-scripting
Operating systems Lab exercise
# Linux commands-Shell scripting
Linux commands-Shell scripting

# AIM:
To practice Linux Commands and Shell Scripting

# DESIGN STEPS:

### Step 1:

Navigate to any Linux environment installed on the system or installed inside a virtual environment like virtual box/vmware or online linux JSLinux (https://bellard.org/jslinux/vm.html?url=alpine-x86.cfg&mem=192) or docker.

### Step 2:

Execute the following commands

### Step 3:

Testing the commands for the desired output. 

# COMMANDS:
### Create the following files file1, file2 as follows:
cat > file1
```
chanchal singhvi
c.k. shukla
s.n. dasgupta
sumit chakrobarty
^d
```
cat > file2
```
anil aggarwal
barun sengupta
c.k. shukla
lalit chowdury
s.n. dasgupta
^d
```
### Display the content of the files
cat < file1
## OUTPUT
<img width="685" height="133" alt="image" src="https://github.com/user-attachments/assets/9a45263f-9a58-4d6a-b842-0070e6d30fae" />



cat < file2
## OUTPUT

<img width="799" height="179" alt="image" src="https://github.com/user-attachments/assets/ba1f1ccf-bb66-495b-ab66-d60ecafbb650" />

# Comparing Files
cmp file1 file2
## OUTPUT
 
comm file1 file2
 ## OUTPUT

 <img width="754" height="89" alt="image" src="https://github.com/user-attachments/assets/7e2e47b2-7763-4d48-94f3-284ba4b49375" />

diff file1 file2
## OUTPUT
<img width="760" height="273" alt="image" src="https://github.com/user-attachments/assets/baebba90-3b50-413f-84ce-6f3943af5a02" />


#Filters

### Create the following files file11, file22 as follows:

cat > file11
```
Hello world
This is my world
^d
```
cat > file22
```
1001 | Ram | 10000 | HR
1002 | tom |  5000 | Admin
1003 | Joe |  7000 | Developer
^d
```


cut -c1-3 file11
## OUTPUT


 <img width="865" height="141" alt="image" src="https://github.com/user-attachments/assets/e2aafc08-e48d-42cd-b665-9056c800fbe6" />


cut -d "|" -f 1 file22
## OUTPUT
<img width="799" height="151" alt="image" src="https://github.com/user-attachments/assets/dc3d5f97-ab0a-42a9-9743-41629eb2de5d" />


cut -d "|" -f 2 file22
## OUTPUT
<img width="803" height="145" alt="image" src="https://github.com/user-attachments/assets/4220987a-cd24-4cf5-a868-63d224999db2" />


cat < newfile 
```
Hello world
hello world
^d
````
cat > newfile 
Hello world
hello world
 
grep Hello newfile 
## OUTPUT

<img width="820" height="74" alt="image" src="https://github.com/user-attachments/assets/609d53dd-18da-4359-8e5d-60fb5a3ac51b" />


grep hello newfile 
## OUTPUT

<img width="730" height="84" alt="image" src="https://github.com/user-attachments/assets/abdccea9-d102-42f7-968c-9b1ca4b5c744" />



grep -v hello newfile 
## OUTPUT
<img width="815" height="160" alt="image" src="https://github.com/user-attachments/assets/57e1b1ac-3813-4f70-a8b5-be6ae1fd5f3b" />



cat newfile | grep -i "hello"
## OUTPUT
<img width="815" height="160" alt="image" src="https://github.com/user-attachments/assets/01960ddf-06fb-42ab-a024-397b17649932" />




cat newfile | grep -i -c "hello"
## OUTPUT

<img width="800" height="78" alt="image" src="https://github.com/user-attachments/assets/d817026d-2189-49c8-a35b-42df453ea20b" />



grep -R ubuntu /etc
## OUTPUT

<img width="838" height="584" alt="image" src="https://github.com/user-attachments/assets/1528973e-f959-4778-9822-0a55620ffac7" />


grep -w -n world newfile   
## OUTPUT

<img width="765" height="114" alt="image" src="https://github.com/user-attachments/assets/d08bf245-5f2d-41e5-ac45-622b8f11be78" />

cat < newfile 
```
Hello world
hello world
Linux is world number 1
Unix is predecessor
Linux is best in this World
^d
```

cat > newfile
```
Hello world
hello world
Linux is world number 1
Unix is predecessor
Linux is best in this World
^d
 ```
egrep -w 'Hello|hello' newfile 
## OUTPUT
<img width="877" height="136" alt="image" src="https://github.com/user-attachments/assets/b05ec512-0b59-4a5b-b1ac-a1d9ac0170f7" />



egrep -w '(H|h)ello' newfile 
## OUTPUT

<img width="755" height="135" alt="image" src="https://github.com/user-attachments/assets/ce0b7b46-d20c-4d2f-88f9-e0b67dd2310c" />


egrep -w '(H|h)ell[a-z]' newfile 
## OUTPUT

<img width="751" height="77" alt="image" src="https://github.com/user-attachments/assets/8eba8dc2-cb9f-42c4-a9bd-bc0302f2c56c" />



egrep '(^hello)' newfile 
## OUTPUT

<img width="751" height="77" alt="image" src="https://github.com/user-attachments/assets/e5fb0fc6-b443-4eb3-86c3-cfa1b60ff33f" />


egrep '(world$)' newfile 
## OUTPUT

<img width="839" height="96" alt="image" src="https://github.com/user-attachments/assets/ac550f37-0989-406d-bbe4-2cf014763e80" />



egrep '(World$)' newfile 
## OUTPUT

<img width="839" height="96" alt="image" src="https://github.com/user-attachments/assets/18fce965-facc-47bd-a9d1-b700a0056683" />


egrep '((W|w)orld$)' newfile 
## OUTPUT

<img width="755" height="135" alt="image" src="https://github.com/user-attachments/assets/1fb9cefe-98b8-45bd-88c4-1568c9c4af3f" />


egrep '[1-9]' newfile 
## OUTPUT

<img width="762" height="86" alt="image" src="https://github.com/user-attachments/assets/9f5389fc-dc37-4b1a-a626-26d6581d501f" />


egrep 'Linux.*world' newfile 
## OUTPUT

<img width="741" height="109" alt="image" src="https://github.com/user-attachments/assets/a56523e0-5b60-48bd-91e2-7a39871eb3a0" />

egrep 'Linux.*World' newfile 
## OUTPUT

<img width="741" height="109" alt="image" src="https://github.com/user-attachments/assets/c7fcd466-e3e6-43db-b165-a0e066235287" />

egrep l{2} newfile
## OUTPUT

<img width="864" height="131" alt="image" src="https://github.com/user-attachments/assets/5e463761-d8de-45ed-9b85-c3f854a832fd" />


egrep 's{1,2}' newfile
## OUTPUT 

<img width="781" height="134" alt="image" src="https://github.com/user-attachments/assets/6c29e79a-20ba-450b-8cd5-765707302aae" />

cat > file23
```
1001 | Ram | 10000 | HR
1001 | Ram | 10000 | HR
1002 | tom |  5000 | Admin
1003 | Joe |  7000 | Developer
1005 | Sam |  5000 | HR
1004 | Sit |  7000 | Dev
1003 | Joe |  7000 | Developer
1001 | Ram | 10000 | HR
^d
```


sed -n -e '3p' file23
## OUTPUT

<img width="755" height="170" alt="image" src="https://github.com/user-attachments/assets/6a7db38e-513b-41bc-8d1b-358bb32b802f" />


sed -n -e '$p' file23
## OUTPUT
<img width="755" height="170" alt="image" src="https://github.com/user-attachments/assets/2912c556-56f8-4001-804e-de7f61c85f6d" />



sed  -e 's/Ram/Sita/' file23
## OUTPUT

<img width="783" height="275" alt="image" src="https://github.com/user-attachments/assets/db8945df-8dcf-4447-87ee-af5a7c889de0" />


sed  -e '2s/Ram/Sita/' file23
## OUTPUT

<img width="783" height="275" alt="image" src="https://github.com/user-attachments/assets/4275a779-9dd3-4235-861c-a256aa424170" />


sed  '/tom/s/5000/6000/' file23
## OUTPUT

<img width="715" height="271" alt="image" src="https://github.com/user-attachments/assets/7eb30bf3-0128-4f67-93a9-b0fa2838508e" />


sed -n -e '1,5p' file23
## OUTPUT

<img width="814" height="187" alt="image" src="https://github.com/user-attachments/assets/45460611-348e-4b7f-9f65-858920604a3b" />


sed -n -e '2,/Joe/p' file23
## OUTPUT


<img width="794" height="122" alt="image" src="https://github.com/user-attachments/assets/543d092c-833c-41e7-be4a-62d3cba1790c" />


sed -n -e '/tom/,/Joe/p' file23
## OUTPUT
<img width="746" height="110" alt="image" src="https://github.com/user-attachments/assets/a77a97e5-a40f-4a8d-bfe9-28fc1cf8183f" />



seq 10 
## OUTPUT

<img width="673" height="311" alt="image" src="https://github.com/user-attachments/assets/2897f728-6bb9-4234-92af-2ce2eec549b7" />


seq 10 | sed -n '4,6p'
## OUTPUT

<img width="827" height="143" alt="image" src="https://github.com/user-attachments/assets/cb1bbde8-d3ad-4fe4-ac7e-0fcee38ebffe" />


seq 10 | sed -n '2,~4p'
## OUTPUT

<img width="720" height="128" alt="image" src="https://github.com/user-attachments/assets/da425550-d0d9-4cd1-b00b-eddd88e8d7e7" />


seq 3 | sed '2a hello'
## OUTPUT

<img width="673" height="162" alt="image" src="https://github.com/user-attachments/assets/4262e1a2-3609-44fd-b553-70726b7ba8de" />


seq 2 | sed '2i hello'
## OUTPUT

<img width="847" height="124" alt="image" src="https://github.com/user-attachments/assets/b2ad4911-a257-4345-9372-df07398bca45" />

seq 10 | sed '2,9c hello'
## OUTPUT
<img width="681" height="142" alt="image" src="https://github.com/user-attachments/assets/ff409c87-cbcf-4e89-b64c-4b531330a30a" />


sed -n '2,4{s/^/$/;p}' file23
## OUTPUT
<img width="725" height="140" alt="image" src="https://github.com/user-attachments/assets/3b471466-3ae2-47a2-bfcd-3a913f82ccca" />



sed -n '2,4{s/$/*/;p}' file23

<img width="716" height="178" alt="image" src="https://github.com/user-attachments/assets/642d40db-6cfd-48d7-b15b-5eed937b3323" />

#Sorting File content
cat > file21
```
1001 | Ram | 10000 | HR
1002 | tom |  5000 | Admin
1003 | Joe |  7000 | Developer
1005 | Sam |  5000 | HR
1004 | Sit |  7000 | Dev
``` 
sort file21
## OUTPUT
<img width="792" height="186" alt="image" src="https://github.com/user-attachments/assets/bd4881ef-73b8-4126-ae5a-070bd7f84a0d" />


cat > file22
```
1001 | Ram | 10000 | HR
1001 | Ram | 10000 | HR
1002 | tom |  5000 | Admin
1003 | Joe |  7000 | Developer
1005 | Sam |  5000 | HR
1004 | Sit |  7000 | Dev
``` 
uniq file22
## OUTPUT

<img width="738" height="271" alt="image" src="https://github.com/user-attachments/assets/fec40c9f-8f84-4dcc-ac15-20508cb559b5" />


#Using tr command

cat file23 | tr [:lower:] [:upper:]
 ## OUTPUT
<img width="756" height="125" alt="image" src="https://github.com/user-attachments/assets/7be38e4f-1336-4450-b765-b9e2f8e3d575" />

cat < urllist.txt
```
www. yahoo. com
www. google. com
www. mrcet.... com
^d
 ```
cat > urllist.txt
```
www. yahoo. com
www. google. com
www. mrcet.... com
 ```
cat urllist.txt | tr -d ' '
 ## OUTPUT


 <img width="716" height="145" alt="image" src="https://github.com/user-attachments/assets/e85f25eb-f3ad-4e46-824a-c7067bb1df7d" />

cat urllist.txt | tr -d ' ' | tr -s '.'
## OUTPUT


<img width="760" height="347" alt="image" src="https://github.com/user-attachments/assets/2330b4de-4eaf-4e79-adb2-5553491bac67" />

#Backup commands
tar -cvf backup.tar *
## OUTPUT
<img width="876" height="479" alt="image" src="https://github.com/user-attachments/assets/0d435573-72f3-4920-9d00-41c706967d57" />


mkdir backupdir
 
mv backup.tar backupdir

cd backupdir
 
tar -tvf backup.tar
## OUTPUT
<img width="725" height="330" alt="image" src="https://github.com/user-attachments/assets/b9b95f7f-4e82-42e5-be72-459875f8f537" />


tar -xvf backup.tar
## OUTPUT
<img width="725" height="330" alt="image" src="https://github.com/user-attachments/assets/75a759be-b0f1-4afa-aab4-8e72d1ea1a89" />

gzip backup.tar

ls .gz
## OUTPUT
 
gunzip backup.tar.gz
<img width="861" height="92" alt="image" src="https://github.com/user-attachments/assets/ab3fbb4f-3387-483c-942f-02b085709b87" />
 OUTPUT

 
# Shell Script
```
echo '#!/bin/sh' > my-script.sh
echo 'echo Hello World‘; exit 0 >> my-script.sh
```
chmod 755 my-script.sh
./my-script.sh
## OUTPUT
<img width="834" height="144" alt="image" src="https://github.com/user-attachments/assets/6899c56b-38d1-4aa4-90ec-9aadd5a60978" />

 
cat << stop > herecheck.txt
```
hello in this world
i cant stop
for this non stop movement
stop
```

cat herecheck.txt
## OUTPUT

<img width="693" height="81" alt="image" src="https://github.com/user-attachments/assets/92388cc5-ec2c-4cc7-85ee-c38f28450e4c" />

cat < scriptest.sh 
```bash
\#!/bin/sh
echo “File name is $0 ”
echo "File name is " `basename $0`
echo “First arg. is ” $1
echo “Second arg. is ” $2
echo “Third arg. is ” $3
echo “Fourth arg. is ” $4
echo 'The $@ is ' $@
echo 'The $\# is ' $1#
echo 'The $$ is ' $$
ps
^d
 ```

cat scriptest.sh 
```bash
\#!/bin/sh
echo “File name is $0 ”
echo "File name is " `basename $0`
echo “First arg. is ” $1
echo “Second arg. is ” $2
echo “Third arg. is ” $3
echo “Fourth arg. is ” $4
echo 'The $@ is ' $@
echo 'The $\# is ' $\#
echo 'The $$ is ' $$
ps
```
 
chmod 777 scriptest.sh
 
./scriptest.sh 1 2 3

## OUTPUT
<img width="693" height="81" alt="image" src="https://github.com/user-attachments/assets/c2ddf67c-3f67-44d3-875c-3c8759863f8e" />

 
ls file1
## OUTPUT
<img width="657" height="359" alt="image" src="https://github.com/user-attachments/assets/3724b1e9-6b26-417f-bf29-ddcc9c3254bc" />

echo $?
## OUTPUT 
./one
bash: ./one: Permission denied
 
echo $?
## <img width="657" height="359" alt="image" src="https://github.com/user-attachments/assets/c45f791d-a6db-41ed-95c0-3d816f1e6533" />
OUTPUT 
 
abcd
 
echo $?
 ## OUTPUT
<img width="715" height="86" alt="image" src="https://github.com/user-attachments/assets/28b39c27-feeb-4b84-b70c-cca7f8757fa2" />

 
# mis-using string comparisons

cat < strcomp.sh 
```bash
\#!/bin/bash
val1=baseball
val2=hockey
if [ $val1 \> $val2 ]
then
echo "$val1 is greater than $val2"
else
echo "$val1 is less than $val2"
fi
^d
```

cat strcomp.sh 
```bash
\#!/bin/bash
val1=baseball
val2=hockey
if [ $val1 \> $val2 ]
then
echo "$val1 is greater than $val2"
else
echo "$val1 is less than $val2"
fi
```
##OUTPUT

<img width="831" height="306" alt="image" src="https://github.com/user-attachments/assets/2917d327-3f45-4a06-aa80-9243b52a3b6d" />


chmod 755 strcomp.sh
 
./strcomp.sh 
## OUTPUT
<img width="661" height="245" alt="image" src="https://github.com/user-attachments/assets/8389241c-baef-49d5-b642-f42f646c07f9" />


# check file ownership
cat < psswdperm.sh 
```bash
\#!/bin/bash
if [ -O /etc/passwd ]
then
echo “You are the owner of the /etc/passwd file”
else
echo “Sorry, you are not the owner of the /etc/passwd file”
fi
^d
```

cat psswdperm.sh 
```bash
/#!/bin/bash
if [ -O /etc/passwd ]
then
echo “You are the owner of the /etc/passwd file”
else
echo “Sorry, you are not the owner of the /etc/passwd file”
fi
 ```
./psswdperm.sh
## OUTPUT
<img width="483" height="194" alt="image" src="https://github.com/user-attachments/assets/f9c86a3a-6ac8-4a08-963a-e569e39c201b" />

# check if with file location
cat>ifnested.sh 
```bash
\#!/bin/bash
if [ -e $HOME ]
then
echo “$HOME The object exists, is it a file?”
if [ -f $HOME ]
then
echo “Yes,$HOME it is a file!”
else
echo “No,$HOME it is not a file!”
if [ -f $HOME/.bash_history ]
then
echo “But $HOME/.bash_history is a file!”
fi
fi
else
echo “Sorry, the object does not exist”
fi
^d
```
cat ifnested.sh 
```
\#!/bin/bash
if [ -e $HOME ]
then
echo “$HOME The object exists, is it a file?”
if [ -f $HOME ]
then
echo “Yes,$HOME it is a file!”
else
echo “No,$HOME it is not a file!”
if [ -f $HOME/.bash_history ]
then
echo “But $HOME/.bash_history is a file!”
fi
fi
else
echo “Sorry, the object does not exist”
fi
```

./ifnested.sh 
## OUTPUT

<img width="483" height="194" alt="image" src="https://github.com/user-attachments/assets/a0775479-1030-487d-9999-dc2ea24ac75a" />


# using numeric test comparisons
cat > iftest.sh 
```bash
\#!/bin/bash
val1=10
val2=11
if [ $val1 -gt 5 ]
then
echo “The test value $val1 is greater than 5”
fi
if [ $val1 -eq $val2 ]
then
echo “The values are equal”
else
echo “The values are different”
fi
^d
```


cat iftest.sh 
```bash
\#!/bin/bash
val1=10
val2=11
if [ $val1 -gt 5 ]
then
echo “The test value $val1 is greater than 5”
fi
if [ $val1 -eq $val2 ]
then
echo “The values are equal”
else
echo “The values are different”
fi
```

$ chmod 755 iftest.sh
 
$ ./iftest.sh 
##OUTPUT
<img width="483" height="194" alt="image" src="https://github.com/user-attachments/assets/63062415-5cb5-4756-825f-548d79c56fa9" />

# check if a file
cat > ifnested.sh 
```bash
\#!/bin/bash
if [ -e $HOME ]
then
echo “$HOME The object exists, is it a file?”
if [ -f $HOME ]
then
echo “Yes,$HOME it is a file!”
else
echo “No,$HOME it is not a file!”
if [ -f $HOME/.bash_history ]
then
echo “But $HOME/.bash_history is a file!”
fi
fi
else
echo “Sorry, the object does not exist”
fi
^d
```

cat ifnested.sh 
```bash
\#!/bin/bash
if [ -e $HOME ]
then
echo “$HOME The object exists, is it a file?”
if [ -f $HOME ]
then
echo “Yes,$HOME it is a file!”
else
echo “No,$HOME it is not a file!”
if [ -f $HOME/.bash_history ]
then
echo “But $HOME/.bash_history is a file!”
fi
fi
else
echo “Sorry, the object does not exist”
fi
```

$ chmod 755 ifnested.sh
 
$ ./ifnested.sh 
##OUTPUT
<img width="618" height="332" alt="image" src="https://github.com/user-attachments/assets/e9eb9e5a-c2ab-4112-a4ba-fda3a5a9031f" />

# looking for a possible value using elif
cat elifcheck.sh 
```bash
\#!/bin/bash
if [ $USER = Ram ]
then
echo "Welcome $USER"
echo "Please enjoy your visit"
elif [ $USER = Rahim ]
then
echo "Welcome $USER"
echo "Please enjoy your visit"
elif [ $USER = Robert ]
then
echo "Special testing account"
elif [ $USER = gganesh ]
then
echo "$USER, Do not forget to logout when you're done"
else
echo "Sorry, you are not allowed here"
fi
```

$ chmod 755 elifcheck.sh
 
$ ./elifcheck.sh 
## OUTPUT
<img width="751" height="161" alt="image" src="https://github.com/user-attachments/assets/036bf7de-59e6-4847-882c-30df1fb22666" />


# testing compound comparisons
cat> ifcompound.sh 
```bash
\#!/bin/bash
if [ -d $HOME ] && [ -w $HOME ]
then
echo "The file exists and you can write to it"
else
echo "I cannot write to the file"
fi
```
$ chmod 755 ifcompound.sh
$ ./ifcompound.sh 
## OUTPUT
<img width="751" height="161" alt="image" src="https://github.com/user-attachments/assets/3a05d3b0-8939-4591-b9ad-5ecd9f5e9490" />

# using the case command
cat >casecheck.sh 
```bash
case $USER in
Ram | Robert)
echo "Welcome, $USER"
echo "Please enjoy your visit";;
Rahim)
echo "Special testing account";;
gganesh)
echo "$USER, Do not forget to log off when you're done";;
*)
echo "Sorry, you are not allowed here";;
esac
```
$ chmod 755 casecheck.sh 
 
$ ./casecheck.sh 
 
cat > whiletest
```bash
#!/bin/bash
#while command test
var1=10
while [ $var1 -gt 0 ]
do
echo $var1
var1=$[ $var1 - 1 ]
done
```
$ chmod 755 whiletest.sh
 
$ ./whiletest.sh
 
 
cat untiltest.sh 
```bash
\#using the until command
var1=100
until [ $var1 -eq 0 ]
do
echo $var1
var1=$[ $var1 - 25 ]
done
``` 
$ chmod 755 untiltest.sh
 
 
 
cat forin1.sh 
```bash
\#!/bin/bash
\#basic for command
for test in Alabama Alaska Arizona Arkansas California Colorado
do
echo The next state is $test
done
 ```
 
$ chmod 755 forin1.sh
 
 
cat forin2.sh 
```bash
\#!/bin/bash
\# another example of how not to use the for command
for test in I don't know if this'll work
do
echo “word:$test”
done
 ```
 
$ chmod 755 forin2.sh
 
cat forin2.sh 
```bash
\#!/bin/bash
\# another example of how not to use the for command
for test in I don't know if this'll work
do
echo “word:$test”
done
```
$ chmod 755 forin2.sh
 
$ ./forin2.sh 
 
cat forin3.sh 
```bash
\#!/bin/bash
\# another example of how not to use the for command
for test in I don\'t know if "this'll" work
do
echo "word:$test"
done
```
$ ./forin3.sh 
 
cat forin1.sh 
```bash
#!/bin/bash
# basic for command
for test in Alabama Alaska Arizona Arkansas California Colorado
do
echo The next state is $test
done
```
$ chmod 755 forin1.sh

## OUTPUT
cat forinfile.sh 
<img width="792" height="255" alt="image" src="https://github.com/user-attachments/assets/705120ad-8462-467d-a0fc-e3a59ec61fff" />

```bash
#!/bin/bash
# reading values from a file
file="cities"
for state in `cat $file`
do
echo "Visit beautiful $file“
done
```
$ chmod 777 forinfile.sh
$ cat cities
Hyderabad
Alampur
Basara
Warangal
Adilabad
Bhadrachalam
Khammam

## OUTPUT

<img width="753" height="204" alt="image" src="https://github.com/user-attachments/assets/9a465b4a-42fd-45f9-a503-3d48ad39b2d8" />

cat forctype.sh 
```bash
#!/bin/bash
# testing the C-style for loop
for (( i=1; i <= 5; i++ ))
do
echo "The value of i is $i"
done
````
$ chmod 755 forctype.sh
$ ./forctype.sh 
## OUTPUT
<img width="527" height="170" alt="image" src="https://github.com/user-attachments/assets/cfda4ba5-9030-4a14-89de-7475f1a98b38" />

cat forctype1.sh 
```bash
#!/bin/bash
# multiple variables
for (( a=1, b=5; a <= 5; a++, b-- ))
do
echo "$a - $b"
done
```
$ chmod 755 forctype.sh
$ ./forctype1.sh 
## OUTPUT
<img width="651" height="331" alt="image" src="https://github.com/user-attachments/assets/13958b19-839c-4672-8701-60d74dabc0d7" />

cat fornested1.sh 
```bash
#!/bin/bash
# nesting for loops
for (( a = 1; a <= 3; a++ ))
do
echo "Starting loop $a:"
for (( b = 1; b <= 3; b++ ))
do
echo " Inside loop: $b"
done
done
```
$ chmod 755 fornested1.sh
 
$ ./fornested1.sh 
 ## OUTPUT
<img width="651" height="331" alt="image" src="https://github.com/user-attachments/assets/f0f317e3-80a0-4646-937e-521a8c894391" />

 
cat forbreak.sh 
```bash
#!/bin/bash
# breaking out of a for loop
for var1 in 1 2 3 4 5
do
if [ $var1 -eq 3 ]
then
break
fi
echo "Iteration number: $var1"
done
echo "The for loop is completed“
```
## OUTPUT
<img width="740" height="231" alt="image" src="https://github.com/user-attachments/assets/b952fdf0-8d89-466f-b9b2-eb8dec8f8fa4" />

$ chmod 755 forbreak.sh
 
$ ./forbreak.sh 
 
cat forbreak.sh 
```bash
#!/bin/bash
# breaking out of a for loop
for var1 in 1 2 3 4 5
do
if [ $var1 -eq 3 ]
then
continue
fi
echo "Iteration number: $var1"
done
echo "The for loop is completed“
```

 
$ chmod 755 forcontinue.sh
 
$ ./forcontinue.sh 
## OUTPUT
 <img width="700" height="121" alt="image" src="https://github.com/user-attachments/assets/344d016d-7915-4e0c-bd1b-bd723a6e256e" />

cat exread.sh 
```bash
#!/bin/bash
# testing the read command
echo -n "Enter your name: "
read name
echo "Hello $name, welcome to my program. "
 ```
 
$ chmod 755 exread.sh 
 
$ ./exread.sh 
## OUTPUT
<img width="700" height="121" alt="image" src="https://github.com/user-attachments/assets/5e7b37fa-722b-4513-bd31-70e27d01d627" />


 cat exread1.sh
```bash
#!/bin/bash
# testing the read command
read -p "Enter your name: " name
echo "Hello $name, welcome to my program. “
``` 
$ chmod 755 exread1.sh 

## OUTPUT

<img width="700" height="121" alt="image" src="https://github.com/user-attachments/assets/f308d57e-cb4e-4e94-9fc8-201d4298ff6f" />


$ ./exread1.sh 
 
cat funcex.sh
```bash
#!/bin/bash
# trying to access script parameters inside a function
function func {
echo $[ $1 * $2 ]
}
if [ $# -eq 2 ]
then
value=`func $1 $2`
echo "The result is $value"
else
echo "Usage: badtest1 a b"
fi
```
## OUTPUT
 ./funcex.sh 

 
 ./funcex.sh 1 2

 <img width="726" height="167" alt="image" src="https://github.com/user-attachments/assets/17d94fd1-8fcf-4fbd-907f-ddb80bde0c0d" />

cat argshift.sh
```bash
#!/bin/bash 
 while (( "$#" )); do 
  echo $1 
  shift 
done
```
$ chmod 777 argshift.sh

## OUTPUT
$ ./argshift.sh 1 2 3
 <img width="726" height="167" alt="image" src="https://github.com/user-attachments/assets/b676708b-068b-4e9d-bbff-ad4442ff14b4" />
<img width="672" height="302" alt="image" src="https://github.com/user-attachments/assets/f009840d-c31a-4769-9293-a8390d4e8b97" />

 cat argshift1.sh
```bash
 #/bin/bash 
 # store arguments in a special array 
args=("$@") 
# get number of elements 
ELEMENTS=${#args[@]} 
 # echo each element in array  
# for loop 
for (( i=0;i<$ELEMENTS;i++)); do 
    echo ${args[${i}]} 
done
```
$ chmod 777 argshift.sh
## OUTPUT
$ ./argshift.sh 1 2 3
 
cat argshift.sh
```bash
#!/bin/bash 
set -x 
while (( "$#" )); do 
  echo $1 
  shift 
done
set +x
```
## OUTPUT
 ./argshift.sh 1 2 3
 
 
cat > nc.awk
```bash
BEGIN{}
{
print len=length($0),"\t",$0 
wordcount+=NF
chrcnt+=len
}
END {
print "total characters",chrcnt 
print "Number of Lines are",NR
print "No of Words count:",wordcount
}
 ```
cat>data.dat
```bash
bcdfghj
abcdfghj
bcdfghj
ebcdfghj
bcdfghj
ibcdfghj
bcdfghj
obcdfghj
bcdfghj
ubcdfghj
```
awk -f nc.awk data.dat
## OUTPUT 
<img width="758" height="396" alt="image" src="https://github.com/user-attachments/assets/a12675ef-a38a-42b5-b9ae-064af5c8e6f6" />


cat > palindrome.sh
```bash
#num=545
echo "Enter the number"
read num
s=0
rev=""
temp=$num
while [ $num -gt 0 ]
do
	# Get Remainder
	s=$(( $num % 10 ))
	# Get next digit
	num=$(( $num / 10 ))
	# Store previous number and
	# current digit in reverse
	rev=$( echo ${rev}${s} )
done
if [ $temp -eq $rev ];
then
	echo "Number is palindrome"
else
	echo "Number is NOT palindrome"
fi
```
## OUTPUT 
<img width="750" height="186" alt="image" src="https://github.com/user-attachments/assets/1caccd0e-76c6-4a62-a397-12621ed3c4e5" />


# RESULT:
The Commands are executed successfully.
