<?php 
//Gotchas when using PHP 5.3
//hopefully this won't be relevant for much longer

//can't use $array = []; when creating array
$array = array();

//can't use empty on result of function return
if(empty(func())){ //will throw error
}


//can't use JSON_PRETTY_PRINT
//have to create custom function to pretty print json for apis
json_encode($array, JSON_PRETTY_PRINT); //won't work