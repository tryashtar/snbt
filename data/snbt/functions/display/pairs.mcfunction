scoreboard players add entries snbt 1
function snbt:display/key
data modify storage snbt:temp output append value '": "'
function snbt:parse/next
function snbt:display/value
function snbt:parse/peek with storage snbt:temp context
execute if data storage snbt:temp {char:","} run function snbt:parse/next
execute if data storage snbt:temp {char:","} run data modify storage snbt:temp output append value '", "'
execute if data storage snbt:temp {char:","} run function snbt:display/pairs
