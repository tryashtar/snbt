$data modify storage snbt:temp context.value set string storage snbt:temp snbt $(start) $(end)
execute if data storage snbt:temp context{value:"\\"} run return run function snbt:parse/value/string
execute if data storage snbt:temp context{value:'"'} run return run function snbt:parse/value/string
execute if data storage snbt:temp context{value:"'"} run return run function snbt:parse/value/string
