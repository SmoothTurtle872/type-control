# Initialise temporary string storage with a string
$data modify storage tc:temp string.loop.string set value "$(string)"
# Initialise the maximum and starting indexes
execute store result score loop1.max tc.loop.string run data get storage tc:temp string.loop.string
scoreboard players set loop1.current tc.loop.string 0
# Run the loop, specifying a function to run on each charchter and any arguments for it
$function tc:string/loop/loop {function:"$(function)",args:$(args)}

