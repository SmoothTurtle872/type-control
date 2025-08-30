# Initialise storages
data modify storage tc:temp string.compare set value {a:"",b:""}
$data modify storage tc:temp string.compare.a set value "$(string1)"
$data modify storage tc:temp string.compare.b set value "$(string2)"
# Compare and return the inverted value
execute if function tc:string/compare/compare run return 0
return 1