execute if score depth snbt matches 1.. run return run function snbt:display/collapsed/compound
scoreboard players set entries snbt 0
scoreboard players add depth snbt 1
data modify storage snbt:temp output append value '"{"'
function snbt:parse/next
function snbt:parse/peek with storage snbt:temp context
execute unless data storage snbt:temp {char:"}"} run function snbt:display/pairs
function snbt:parse/next
data modify storage snbt:temp output append value '"}"'
scoreboard players remove depth snbt 1
