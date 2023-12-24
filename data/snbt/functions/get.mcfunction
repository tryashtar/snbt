data modify storage snbt:temp nbt set value [[[[0b]]]]
$execute store success score found snbt run data modify storage snbt:temp nbt set from $(path)
execute if score found snbt matches 0 run return run tellraw @s {"text":"No data found at that path","color":"red"}
data modify storage snbt:temp output set value []
function snbt:convert/snbt
execute store result storage snbt:temp context.start int 1 run scoreboard players set end snbt 0
execute store result storage snbt:temp context.end int 1 run scoreboard players add end snbt 1
data modify storage snbt:temp context.beginning set value 0
function snbt:display/value with storage snbt:temp context
tellraw @s {"storage":"snbt:temp","nbt":"output[]","interpret":true,"separator":""}
