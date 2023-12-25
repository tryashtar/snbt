execute if score collapse snbt matches 1 if score depth snbt matches 1.. run return run function snbt:display/collapsed/compound
scoreboard players set entries snbt 0
data modify storage snbt:temp output append value '"{"'
scoreboard players add depth snbt 1
function snbt:parse/next
function snbt:parse/peek with storage snbt:temp context
execute store result storage snbt:temp empty byte 1 if data storage snbt:temp {char:"}"}
data modify storage snbt:temp empty_stack append from storage snbt:temp empty
execute if score pretty snbt matches 1 if data storage snbt:temp {empty:0b} run data modify storage snbt:temp output append value '"\\n"'
execute if data storage snbt:temp {empty:0b} run function snbt:display/pairs
function snbt:parse/next
data modify storage snbt:temp empty set from storage snbt:temp empty_stack[-1]
data remove storage snbt:temp empty_stack[-1]
execute if score pretty snbt matches 1 if data storage snbt:temp {empty:0b} run data modify storage snbt:temp output append value '"\\n"'
scoreboard players remove depth snbt 1
scoreboard players operation tabs snbt = depth snbt
execute if score pretty snbt matches 1 if data storage snbt:temp {empty:0b} if score tabs snbt matches 1.. run function snbt:display/tabs
data modify storage snbt:temp output append value '"}"'
