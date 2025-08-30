# Stores the current index
execute store result storage tc:temp string.loop.index.start int 1 run scoreboard players get loop1.current tc.loop.string
# Incrmeents the index
scoreboard players add loop1.current tc.loop.string 1
# Stores the next index (This is nessacary for data modify namespace path set string)
execute store result storage tc:temp string.loop.index.end int 1 run scoreboard players get loop1.current tc.loop.string
# Retrive the letter at the given index within the string
function tc:string/loop/get_value with storage tc:temp string.loop.index
# Store the arguments into storage
$data modify storage tc:temp string.loop.args set value $(args)
# Add the charachter to the arguments
data modify storage tc:temp string.loop.args.char set from storage tc:temp string.loop.char
# Run the function
$function $(function) with storage tc:temp string.loop.args
# Check if the loop is at the end, and if not, run the loop again
$execute unless score loop1.current tc.loop.string >= loop1.max tc.loop.string run function tc:string/loop/loop {function:"$(function)",args:$(args)}