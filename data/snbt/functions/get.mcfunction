scoreboard objectives add snbt dummy
data modify storage snbt:temp nbt set value [[[[0b]]]]
$execute store success score found snbt run data modify storage snbt:temp nbt set from $(path)
execute if score found snbt matches 0 run return run tellraw @s {"text":"No data found at that path","color":"red"}
scoreboard players set pretty snbt 0
scoreboard players set collapse snbt 1
function snbt:print
