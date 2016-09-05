<?php 

//connect to Redis using php
//make sure to install the php-redis module and redis is running

//full documentation at:
//https://github.com/phpredis/phpredis

$redis = new Redis();
$redis->connect('127.0.0.1', 6379);

$redis->set('key_name', 'key_value');
$value = $redis->get('key_name');