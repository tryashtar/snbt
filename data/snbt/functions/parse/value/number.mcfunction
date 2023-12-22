$data modify storage snbt:temp char set string storage snbt:temp context.snbt $(start) $(end)
execute if data storage snbt:temp {char:","} run return 1
execute if data storage snbt:temp {char:"]"} run return 1
execute if data storage snbt:temp {char:"}"} run return 1
execute store result storage snbt:temp context.start int 1 run scoreboard players get end snbt
execute store result storage snbt:temp context.end int 1 run scoreboard players add end snbt 1
function snbt:parse/value/number with storage snbt:temp context
