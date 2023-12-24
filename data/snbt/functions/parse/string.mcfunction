scoreboard players set escape snbt 0
function snbt:parse/peek with storage snbt:temp context
function snbt:parse/next
execute if data storage snbt:temp {char:'"'} run function snbt:parse/string/double
execute if data storage snbt:temp {char:"'"} run function snbt:parse/string/single
execute unless data storage snbt:temp {char:'"'} unless data storage snbt:temp {char:"'"} run function snbt:parse/string/plain
