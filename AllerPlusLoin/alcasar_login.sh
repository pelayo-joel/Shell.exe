#!/bin/bash

cha=$(curl -i https://alcasar.laplateforme.io/intercept.php -L | grep -o -P '(?<=challenge=).*(?=&called)')
curl -i -H "Content-Type: multipart/form-data" -X POST -F "challenge=$cha" -F "username=joel.pelayo@laplateforme.io" -F "password=e3cX8I" -F "button=Authentication" https://alcasar.laplateforme.io/intercept.php -L
