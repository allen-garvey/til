# Implicit Function Definitions

If a function signature has not been defined prior to it being used (either through a header file, function prototype or full function definition), floating point arguments are converted to doubles and the function is assumed to return an int. In other words, if you get a compiler warning about using implicit function definition, you *really* want to fix it.