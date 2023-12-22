$data modify storage snbt:temp char set string storage snbt:temp context.snbt $(start) $(end)
execute if score escape snbt matches 0 if data storage snbt:temp {char:"\\"} run scoreboard players set escape snbt 2
execute if score escape snbt matches 0 if data storage snbt:temp {char:"'"} run return 1
execute if score escape snbt matches 1.. run scoreboard players remove escape snbt 1
execute store result storage snbt:temp context.start int 1 run scoreboard players get end snbt
execute store result storage snbt:temp context.end int 1 run scoreboard players add end snbt 1
function snbt:parse/string/single with storage snbt:temp context
