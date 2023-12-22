$data modify storage snbt:temp char set string storage snbt:temp context.snbt $(start) $(end)
execute if data storage snbt:temp {char:":"} store result storage snbt:temp context.end int 1 run return run scoreboard players remove end snbt 1
execute store result storage snbt:temp context.start int 1 run scoreboard players get end snbt
execute store result storage snbt:temp context.end int 1 run scoreboard players add end snbt 1
function snbt:parse/string/plain with storage snbt:temp context
