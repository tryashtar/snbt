scoreboard players add entries snbt 1
scoreboard players operation tabs snbt = depth snbt
execute if score pretty snbt matches 1 run function snbt:display/tabs
function snbt:display/value
function snbt:parse/peek with storage snbt:temp context
execute if data storage snbt:temp {char:","} run function snbt:parse/next
execute if data storage snbt:temp {char:","} run data modify storage snbt:temp output append value '", "'
execute if data storage snbt:temp {char:","} if score pretty snbt matches 1 run data modify storage snbt:temp output append value '"\\n"'
execute if data storage snbt:temp {char:","} run function snbt:display/values
