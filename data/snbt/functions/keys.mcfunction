scoreboard objectives add snbt dummy
data modify storage snbt:temp nbt set value [[[[0b]]]]
$execute store success score found snbt run data modify storage snbt:temp nbt set from $(path)
execute if score found snbt matches 0 run return run tellraw @s {"text":"No data found at that path","color":"red"}
data modify storage snbt:temp output set value []
execute store result score keys snbt run data get storage snbt:temp nbt
function snbt:convert/snbt
execute if score keys snbt matches 1.. run function snbt:keys/loop
tellraw @s {"storage":"snbt:temp","nbt":"output[]","interpret":true}
