$data modify storage snbt:temp context.value set string storage snbt:temp snbt $(start) $(end)
execute if data storage snbt:temp context{value:"\\"} run return run function snbt:parse/value/string
execute if data storage snbt:temp context{value:'"'} run return run function snbt:parse/value/string
execute if data storage snbt:temp context{value:"'"} run return run function snbt:parse/value/string
scoreboard players operation beginning snbt = end snbt
execute store result storage snbt:temp context.beginning int 1 run scoreboard players remove beginning snbt 1
function snbt:parse/value/number with storage snbt:temp context
execute store result storage snbt:temp context.end int 1 run scoreboard players remove end snbt 1
function snbt:parse/value/number_finish with storage snbt:temp context
function snbt:display/number
