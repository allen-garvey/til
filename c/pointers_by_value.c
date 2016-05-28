/*
Pointers are passed by value to functions
that means that the contents in memory that a pointer
points to can be altered inside a function,
but that the address in memory that the pointer points to
will be unchanged
*/

#include <stdlib.h>

/*
* When function returns nothing will be changed
* since pointers are passed by value
*/
void pointerExample1(int *ptr1, int *ptr2){
	ptr1 = ptr2;
}

/*
* Contents in memory that pointer points to
* changed to 2, will persist after function returns
*/
void pointerExample2(int *ptr1){
	*ptr1 = 2;
}


