# Initialise temporary string storage with a string
$data modify storage tc:temp array.loop.array set value $(array)
# Initialise the maximum and starting indexes
execute store result score loop1.max tc.loop.array run data get storage tc:temp array.loop.array
scoreboard players set loop1.current tc.loop.array 0
# Run the loop, specifying a function to run on each charchter and any arguments for it
$function tc:array/loop/loop {function:"$(function)",args:$(args)}

