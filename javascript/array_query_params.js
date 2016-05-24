//When serializing arrays for query params that are being sent to 
//a PHP backend it should be serialized as:

var array = [1,2,3];

//serialized should be
//array[]=1&array[]=2&array[]=3

var query_params = array.map(function(item){return 'array[]='+ item;}).join('&');
