data modify storage snbt:temp nbt set value [[[[0b]]]]
$execute store success score found snbt run data modify storage snbt:temp nbt set from $(path)
execute if score found snbt matches 0 run return run tellraw @s {"text":"No data found at that path","color":"red"}
data modify storage snbt:temp output set value []
function snbt:convert/snbt
data modify storage snbt:temp char set string storage snbt:temp context.snbt 0 1
execute if data storage snbt:temp {char:"{"} run return run function snbt:get/compound
execute if data storage snbt:temp {char:"["} run return run function snbt:get/list
