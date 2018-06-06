#!/bin/bash
###################
# Author:  wudi
# Mail: programmerwudi@gmail.com 
# Description: 
# Created Time: 2018-03-20 18:44:40
###################

echo "look pid"
ps aux |grep unicorn

echo "git pull start..."
#git pull; bundle install; kill -9 `cat /opt/work/cs_admin/tmp/pids/unicorn_data.pid` ;  bundle exec unicorn_rails -E development -D -c /opt/work/cs_admin/config/unicorn.rb; ps aux |grep unicorn
git pull; bundle install; kill -9 `cat /opt/work/cs_admin/tmp/pids/unicorn_data.pid` ;  bundle exec unicorn_rails -E production  -D -c /opt/work/cs_admin/config/unicorn.rb; ps aux |grep unicorn

#whenever --update-crontab --set environment='development'

#god stop simple
#echo "restart god"
#god -c simple.god 


echo "Restart end.."
