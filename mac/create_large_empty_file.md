# Create Large Empty File

It can be helpful to be able to create large empty files of a specified type for testing purposes. There is no `fallocate` on OSX, however, there is an equivalent utility called `mkfile` (not to be confused with a makefile). To create a 1GB empty file on your desktop, type `mkfile 1g ~/Desktop/test.mp4` into your terminal.