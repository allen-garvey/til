/*
* Strings are immutable in JavaScript,
* which means that to change them you must make a whole
* new copy and replace the old string
* Knowing this, you might think that it to concatenate
* many strings it would be faster to push all the strings
* into an array, and then do array.join(''), but it is actually
* faster to just concatenate all the strings with the plus operator
* because browsers are optimized for this use case.
*/

var a = "Hello there";

//a is unaltered by this
a[0] = a[0].toLowerCase();

//new copy must be made to alter string
a = a[0].toLowerCase() + a.slice(1, a.length);