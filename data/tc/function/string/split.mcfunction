data modify storage tc:temp string.split.string set value ""
data modify storage tc:temp string.split.list set value []
$function tc:string/loop {string:"$(string)",args:{split_char:"$(char)"},function:"tc:string/split/check_split"}
data modify storage tc:temp string.split.list append from storage tc:temp string.split.string
$data modify storage $(namespace) $(path) set from storage tc:temp string.split.list