
# cities file
cat > cities << EOF
Hyderabad
Alampur
Basara
Warangal
Adilabad
Bhadrachalam
Khammam
EOF

# forinfile
cat > forinfile.sh << EOF
#!/bin/bash
file="cities"
for state in \$(cat \$file)
do
    echo "Visit beautiful \$state"
done
EOF

# forctype
cat > forctype.sh << EOF
#!/bin/bash
for (( i=1; i<=5; i++ ))
do
    echo "The value of i is \$i"
done
EOF

# forctype1
cat > forctype1.sh << EOF
#!/bin/bash
for (( a=1, b=5; a<=5; a++, b-- ))
do
    echo "\$a - \$b"
done
EOF

# fornested
cat > fornested1.sh << EOF
#!/bin/bash
for (( a=1; a<=3; a++ ))
do
    echo "Starting loop \$a:"
    for (( b=1; b<=3; b++ ))
    do
        echo "Inside loop: \$b"
    done
done
EOF

# forbreak
cat > forbreak.sh << EOF
#!/bin/bash
for var1 in 1 2 3 4 5
do
    if [ \$var1 -eq 3 ]
    then
        break
    fi
    echo "Iteration number: \$var1"
done
EOF

# palindrome
cat > palindrome.sh << EOF
#!/bin/bash
echo "Enter number:"
read num
rev=0
temp=\$num

while [ \$num -gt 0 ]
do
    rem=\$((num % 10))
    rev=\$((rev * 10 + rem))
    num=\$((num / 10))
done

if [ \$temp -eq \$rev ]
then
    echo "Palindrome"
else
    echo "Not palindrome"
fi
EOF

chmod +x *.sh
echo "ALL FILES CREATED ✅"
