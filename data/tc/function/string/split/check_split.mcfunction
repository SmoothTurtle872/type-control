$execute store result score is_split tc.split.string run function tc:string/compare {string1:"$(char)",string2:"$(split_char)"}
execute if score is_split tc.split.string matches 1.. run return run function tc:string/split/add_to_list
$data modify storage tc:temp string.split.char set value "$(char)"
function tc:string/split/add_to_string with storage tc:temp string.split