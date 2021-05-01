# Creating a B2 Append only Application Key

## Ubuntu

* `apt install backblaze-b2`
* `backblaze-b2 authorize-account [<masterApplicationKeyId>] [<masterApplicationKey>]`
* `backblaze-b2 create-key --bucket <bucket-name> <key-name> 'listFiles,readFiles,writeFiles'`