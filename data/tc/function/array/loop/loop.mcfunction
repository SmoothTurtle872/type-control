# Stores the current index
execute store result storage tc:temp array.loop.index int 1 run scoreboard players get loop1.current tc.loop.array
# Incrmeents the index
scoreboard players add loop1.current tc.loop.array 1
# Retrive the letter at the given index within the array
function tc:array/loop/get_value with storage tc:temp array.loop
# Store the arguments into storage
$data modify storage tc:temp array.loop.args set value $(args)
# Add the element to the arguments
data modify storage tc:temp array.loop.args.element set from storage tc:temp array.loop.element
# Run the function
$function $(function) with storage tc:temp array.loop.args
# Check if the loop is at the end, and if not, run the loop again
$execute unless score loop1.current tc.loop.array >= loop1.max tc.loop.array run function tc:array/loop/loop {function:"$(function)",args:$(args)}