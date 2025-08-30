data modify storage tc:temp array.concatonate.string set value ""
$function tc:array/loop {array:$(array),function:"tc:array/concatonate/loop",args:{}}
$data modify storage $(namespace) $(path) set from storage tc:temp array.concatonate.string