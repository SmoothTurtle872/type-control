data modify storage tc:temp array.concatenate.string set value ""
$function tc:array/loop {array:$(array),function:"tc:array/concatenate/loop",args:{}}
$data modify storage $(namespace) $(path) set from storage tc:temp array.concatenate.string