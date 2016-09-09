# Set Piped Input to Variable

Based on: [http://stackoverflow.com/questions/2746553/bash-script-read-values-from-stdin-pipe](http://stackoverflow.com/questions/2746553/bash-script-read-values-from-stdin-pipe)

To set piped input to a variable, use `read`.

## Example

`pwd | { read dir; echo "$dir"; }`