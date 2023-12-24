data modify storage snbt:temp output append value '"{"'
function snbt:parse/next
function snbt:parse/peek with storage snbt:temp context
execute unless data storage snbt:temp {char:"}"} run function snbt:display/pairs
function snbt:parse/next
data modify storage snbt:temp output append value '"}"'
