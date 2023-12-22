data modify storage snbt:temp context.key set string storage snbt:temp snbt 2 3
scoreboard players set end snbt 3
execute if data storage snbt:temp context{key:"\\"} run scoreboard players add end snbt 1
execute if data storage snbt:temp context{key:"\\"} run data modify storage snbt:temp context.key set value '"'
execute store result storage snbt:temp context.start int 1 run scoreboard players get end snbt
execute store result storage snbt:temp context.end int 1 run scoreboard players add end snbt 1
scoreboard players set escape snbt 0
execute if data storage snbt:temp context{key:'"'} run return run function snbt:parse/key/double with storage snbt:temp context
execute if data storage snbt:temp context{key:"'"} run return run function snbt:parse/key/single with storage snbt:temp context
# plain keys don't need to be unescaped, we can simply find the end and extract them directly from the stream
function snbt:parse/key/plain with storage snbt:temp context
execute store result storage snbt:temp context.end int 1 run scoreboard players remove end snbt 1
function snbt:parse/key/plain_finish with storage snbt:temp context
