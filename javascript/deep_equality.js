"use strict";

//compares objects or any data type by value to any arbitrary object nesting depth

function identityComparison(a, b){
	return a === b;
}

function numberComparison(a, b){
	//NaN is not equal to itself
	if(isNaN(a) === true && isNaN(b) === true){
		return true;
	}
	return a === b;
}
function objectComparison(a, b){
	//so we only have to loop through the keys in one object
	//since we know there are no more extra keys in object b
	//we haven't tested
	if(Object.keys(a).length !== Object.keys(b).length){
		return false;
	}
	
	for (var key in a) {
		if(!deepEqual(a[key], b[key])){
			return false;
		}
	}
	return true;
}

function arrayComparison(a, b){
	//so we only have to loop through
	//one array since both arrays are the
	//same length
	if(a.length !== b.length){
		return false;
	}
	for (var i = a.length - 1; i >= 0; i--) {
		if(!deepEqual(a[i], b[i])){
			return false;
		}
	}
	return true;
}

function deepEqual(a, b){
	if(typeof a !== typeof b){
		return false;
	}
	//null has type object
	if(a === null || b === null){
		return identityComparison(a, b);
	}
	//array also has type object
	if(Array.isArray(a)){
		if(Array.isArray(b)){
			return arrayComparison(a, b);
		}
		return false;
	}
	switch(typeof a){
		case 'number':
			return numberComparison(a, b);
		case 'object':
			return objectComparison(a, b);
		default:
			return identityComparison(a, b);
	}

	//should never reach this line, but just in case
	return false;
}