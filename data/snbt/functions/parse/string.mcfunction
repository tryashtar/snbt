$data modify storage snbt:temp start set string storage snbt:temp context.snbt $(start) $(end)
scoreboard players set escape snbt 0
execute store result storage snbt:temp context.start int 1 run scoreboard players get end snbt
execute store result storage snbt:temp context.end int 1 run scoreboard players add end snbt 1
execute if data storage snbt:temp {start:'"'} run function snbt:parse/string/double with storage snbt:temp context
execute if data storage snbt:temp {start:"'"} run function snbt:parse/string/single with storage snbt:temp context
execute unless data storage snbt:temp {start:'"'} unless data storage snbt:temp {start:"'"} run function snbt:parse/string/plain with storage snbt:temp context
function snbt:parse/finish with storage snbt:temp context
