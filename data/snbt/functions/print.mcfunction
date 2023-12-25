data modify storage snbt:temp output set value []
data modify storage snbt:temp stack set value []
data modify storage snbt:temp nested set value []
data modify storage snbt:temp empty_stack set value []
scoreboard players set nested snbt 0
function snbt:convert/snbt
scoreboard players set end snbt 0
function snbt:parse/next
scoreboard players set depth snbt 0
function snbt:display/value
tellraw @s {"storage":"snbt:temp","nbt":"output[]","interpret":true,"separator":""}
