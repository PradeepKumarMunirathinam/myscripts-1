#!/bin/sh

if [ -d /home/lx_jeralron/.pem ]
then
 :
else
 mkdir /home/lx_jeralron/.pem
fi

if [ -f /home/lx_jeralron/.pem/adidas.pem ]
then
 rm -rf /home/lx_jeralron/.pem/adidas.pem
else
 touch /home/lx_jeralron/.pem/adidas.pem
fi

echo "-----BEGIN RSA PRIVATE KEY-----
Proc-Type: 4,ENCRYPTED
DEK-Info: DES-EDE3-CBC,EF633C91093A1693

4XEnnBaA88htcBMmldMYGiByzgaUDaOfC5u8kwwuLqZSnb0fP4g84dyxvSegHP+R
ngtWaxlM0q3EO6V0WTl1OwmhQZJ9F5XegjjG3abxV2LMogz2swuvCrbKOfbGepxC
cFCCkDJ10Thh9f3Cmn3YRb1ZZSqZ0P7ntNuiQ7+PfOcf3Ltu2uSd33J8zXuD6Vu6
gOE/6x9nLNNsSoAONjKn0TRSqX+HBNj/RT9rOIFiiEtD5hq8Oi4/6SnTueTV6SOM
qHZ0u6cUUPdddFc3qZGcKV5s5DUDdi4wRzzjvG5QUFlnRSPz5D3eGTx3eXW/Nsog
o6vT6FBQLFqOy1lQFZU2j3NpHtxkkdBsfXpWA1JUvtWvI6IJbx6hC6/hHla27hYr
CCyANuQ8gii3cfCEbvGQSCcziEBiQRIuBEErAnZ+P7kjeyJaZu3oHULEcWDlYxk1
EaLGxh3BEbZOixN6ItwScM/CUyQZl2kn6MWgtafTSj4jlQVP5kqRBcJLJrlDneM2
pE3cqMNDc/oYSg86bgD5jWh/8kALCht9/fi1yAiFMhQyaEYqebII6w7GwsmqS0Qn
GHJ5sXHbnazogLuRLD/5tQC7oePTP4iDHuycIAHZB6IXxDQQiBTIMVowWrNxPlpq
6S+WGIEnh0ht40aVrue0j0Obh0fjnhPObZK5zqrS3ULu7D3dDlqPZWkQcDtHnLLA
jGVeADfQeS6TH/V9wZGNbDJjsqPGbq/rsauBQ4krObPzULCQUksqfphaaINkcUTA
9EPRIKxCucm1foIKW0vtGml/ytFYO7Y9g4hiFgFo7y4=
-----END RSA PRIVATE KEY-----

" > /home/lx_jeralron/.pem/adidas.pem
 chmod 500 /home/lx_jeralron/.pem/adidas.pem
 
#e==========EXTENSION TO PULL SCRIPTS FROM BLOB STORAG

cd /home/lx_jeralron

wget https://myarenaprod4098.blob.core.windows.net/scripts/scripts/calling.sh
wget https://myarenaprod4098.blob.core.windows.net/scripts/scripts/copycmd.sh
wget https://myarenaprod4098.blob.core.windows.net/scripts/scripts/copycmd2.sh
wget https://myarenaprod4098.blob.core.windows.net/scripts/scripts/copywar.exp
wget https://myarenaprod4098.blob.core.windows.net/scripts/scripts/copywar2.exp


chmod 755 calling* copy*
chown -R lx_jeralron calling* copy*
