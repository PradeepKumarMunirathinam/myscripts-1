#!/usr/bin/expect

set timeout 20

spawn "./copycmd2.sh"

expect "Enter passphrase for key '/home/lx_jeralron/.pem/adidas.pem': " { send "Cr1t1c@l\r" }

interact
