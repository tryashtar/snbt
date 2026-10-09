# recursively parse a number, until end of stream or separator character
function snbt:parse/peek with storage snbt:temp context
execute if score end snbt > length snbt store result storage snbt:temp context.end int 1 run return run scoreboard players remove end snbt 1
execute if data storage snbt:temp {char:","} store result storage snbt:temp context.end int 1 run return run scoreboard players remove end snbt 1
execute if data storage snbt:temp {char:"]"} store result storage snbt:temp context.end int 1 run return run scoreboard players remove end snbt 1
execute if data storage snbt:temp {char:"}"} store result storage snbt:temp context.end int 1 run return run scoreboard players remove end snbt 1
function snbt:parse/next
function snbt:parse/number
