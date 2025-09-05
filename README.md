# Type Control
Get more control over your data in minecraft!  
## Note about how types are named in this  
**str** A standard string
**char** A standard string, with length 1
**func** A standard string, represents a function
**object** A map like / JSON object
**array** An array
**ANY** Can be anything
**null** nothing
**bool** either an int of value 1 or 0, or true or false (depends on context)

## Functions  
### Strings  
#### Loop  
> Loops through each character in a string 
**Returns** null  
**Parameters**  
- `string` : str | The string to loop through  
- `function` : func | the function to be run  
- `args` : object | Any additional parameters to be passed to the function  
The function that is run on each charachter in the string is passed the following parameters:  
- `char` : char | The current charachter of the string  
- `ARGS` : ANY | Any arguments passed in through the `args` parameter, unpacked into direct arguments  
#### Split  
> Splits a string into a list by a specified character  
**Returns** array | outputs to a storage  
**Parameters**  
- `string` : str | The string to be split  
- `char` : char | The character to split the string at  
- `namespace` : str | The namespace of the storage to output to  
- `path` : str | The path of the storage to output to
#### Concatenate
> concatenates 2 strings
**Returns** str | outputs to a storage  
**Parameters**
- `string1` : str | The string to be concatenated onto
- `string2` : str | The string to be concatenated to the end of `string1`
- `namespace` : str | The namespace of the storage to output to  
- `path` : str | The path of the storage to output to
#### Compare
> Compares 2 strings
**Returns** bool | direct return  
**Parameters**
- `string1` : str | The first string to be compared
- `string2` : str | The second string to be compared
### Arrays  
#### Loop  
> Loops through each element in an array
**Returns** null  
**Parameters**  
- `array` : array | The array to loop through  
- `function` : func | the function to be run  
- `args` : object | Any additional parameters to be passed to the function  
The function that is run on each charachter in the string is passed the following parameters:  
- `element` : ANY | The current element of the array 
- `ARGS` : ANY | Any arguments passed in through the `args` parameter, unpacked into direct arguments  
#### Concatenate
> Concatenates an array into a string
**Returns** str | outputs to a storage  
**Parameters**
- `array` : array | The array to be concatenated
- `namespace` : str | The namespace of the storage to output to  
- `path` : str | The path of the storage to output to  
