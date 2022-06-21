#!/bin/bash

if [ "$deploy" == "app1" ]; then
    cp -rf /common/webapp1/* /var/www/html/
elif [ "$deploy" == "app2" ]; then
    cp -rf /common/webapp2/* /var/www/html/
elif [ "$deploy" == "app3" ]; then
    cp -rf /common/webapp3/* /var/www/html/
else
    echo "wrong variable value $(deploy)" > /var/www/html/index.html
fi
httpd -DFOREGROUND