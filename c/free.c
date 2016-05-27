#include <stdlib.h>

//free() doesn't set a pointer's value to NULL, so make sure you do that if you expect
//empty pointers to be NULL

void freeExample(int *ptr){
	free(ptr);
	ptr = NULL;
	//now this works
	if(ptr == NULL){
	}
}
