$data modify storage snbt:temp context.string set string storage snbt:temp snbt $(start) $(end)
execute if data storage snbt:temp context{string:"\\"} run scoreboard players add end snbt 1
execute if data storage snbt:temp context{string:"\\"} run data modify storage snbt:temp context.string set value '"'
execute store result storage snbt:temp context.start int 1 run scoreboard players get end snbt
execute store result storage snbt:temp context.end int 1 run scoreboard players add end snbt 1
scoreboard players set escape snbt 0
execute if data storage snbt:temp context{string:'"'} run return run function snbt:parse/string/double with storage snbt:temp context
execute if data storage snbt:temp context{string:"'"} run return run function snbt:parse/string/single with storage snbt:temp context
# plain strings don't need to be unescaped, we can simply find the end and extract them directly from the stream
scoreboard players operation beginning snbt = end snbt
execute store result storage snbt:temp context.beginning int 1 run scoreboard players remove beginning snbt 2
function snbt:parse/string/plain with storage snbt:temp context
execute store result storage snbt:temp context.end int 1 run scoreboard players remove end snbt 1
function snbt:parse/string/plain_finish with storage snbt:temp context
