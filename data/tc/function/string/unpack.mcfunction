data modify storage tc:temp string.unpack.array set value []
$function tc:string/loop {string:"$(string)",function:"tc:string/unpack/append",args:{}}

$data modify storage $(namespace) $(path) set from storage tc:temp string.unpack.array