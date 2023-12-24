scoreboard players set escape snbt 0
function snbt:parse/peek with storage snbt:temp context
function snbt:parse/next
execute if data storage snbt:temp {char:'"'} run return run function snbt:parse/string/double
execute if data storage snbt:temp {char:"'"} run return run function snbt:parse/string/single
function snbt:parse/string/plain
