execute store result score keys snbt run data get storage snbt:temp nbt
execute if score keys snbt matches 1.. run function snbt:append_keys
tellraw @s ["{",{"storage":"snbt:temp","nbt":"output[]","interpret":true},"}"]
