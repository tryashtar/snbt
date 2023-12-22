execute store result score keys snbt run data get storage snbt:temp nbt
execute if score keys snbt matches 0 run return run tellraw @s "{}"
function snbt:append_keys
tellraw @s ["{",{"storage":"snbt:temp","nbt":"output[]","interpret":true},"}"]
