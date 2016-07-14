<?php
//Contrary to JavaScript, variables are in local scope by default, meaning that
//variables declared outside function are not available to functions unless they are passed in
//as parameters
//use of the global keyword makes variables work similar to JavaScript

$test = true;

function test(){
	//$test is not accessible here, unlike JavaScript
	global $test; //now $test can be accessed here
	$GLOBALS['test']; //will also return value of $test global variable
}