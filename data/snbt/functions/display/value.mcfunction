$data modify storage snbt:temp char set string storage snbt:temp context.snbt $(start) $(end)
execute if data storage snbt:temp {char:'"'} run return run function snbt:display/value/string
execute if data storage snbt:temp {char:"'"} run return run function snbt:display/value/string
execute if data storage snbt:temp {char:"{"} run return run function snbt:display/value/compound
execute if data storage snbt:temp {char:"["} run return run function snbt:display/value/list
function snbt:display/value/number
