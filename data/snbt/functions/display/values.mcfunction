function snbt:display/value
function snbt:parse/peek with storage snbt:temp context
execute if data storage snbt:temp {char:","} run function snbt:parse/next
execute if data storage snbt:temp {char:","} run data modify storage snbt:temp output append value '", "'
execute if data storage snbt:temp {char:","} run function snbt:display/values
