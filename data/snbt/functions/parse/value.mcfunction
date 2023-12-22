$data modify storage snbt:temp value_start set string storage snbt:temp context.snbt $(start) $(end)
execute if data storage snbt:temp {value_start:'"'} run return run function snbt:parse/value/string
execute if data storage snbt:temp {value_start:"'"} run return run function snbt:parse/value/string
execute if data storage snbt:temp {value_start:"{"} run return run function snbt:parse/value/compound
execute if data storage snbt:temp {value_start:"["} run return run function snbt:parse/value/list
function snbt:parse/value/number with storage snbt:temp context
execute store result storage snbt:temp context.end int 1 run scoreboard players remove end snbt 1
function snbt:parse/finish with storage snbt:temp context
function snbt:display/number
