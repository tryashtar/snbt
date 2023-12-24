data modify storage snbt:temp nbt set value [[[[0b]]]]
$execute store success score found snbt run data modify storage snbt:temp nbt set from $(path)
execute if score found snbt matches 0 run return run tellraw @s {"text":"No data found at that path","color":"red"}
data modify storage snbt:temp output set value []
function snbt:convert/snbt
scoreboard players set end snbt 0
function snbt:parse/next
function snbt:display/value
tellraw @s {"storage":"snbt:temp","nbt":"output[]","interpret":true,"separator":""}
