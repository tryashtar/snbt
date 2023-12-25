execute if score depth snbt matches 1.. run return run function snbt:display/collapsed/list
scoreboard players set entries snbt 0
scoreboard players add depth snbt 1
data modify storage snbt:temp output append value '"["'
function snbt:parse/next
function snbt:parse/peek with storage snbt:temp context
execute if data storage snbt:temp {char:"I"} run data modify storage snbt:temp output append value '["",{"text":"I","color":"red"},"; "]'
execute if data storage snbt:temp {char:"I"} run function snbt:parse/next
execute if data storage snbt:temp {char:"I"} run function snbt:parse/next
execute if data storage snbt:temp {char:"B"} run data modify storage snbt:temp output append value '["",{"text":"I","color":"red"},"; "]'
execute if data storage snbt:temp {char:"B"} run function snbt:parse/next
execute if data storage snbt:temp {char:"B"} run function snbt:parse/next
execute if data storage snbt:temp {char:"L"} run data modify storage snbt:temp output append value '["",{"text":"I","color":"red"},"; "]'
execute if data storage snbt:temp {char:"L"} run function snbt:parse/next
execute if data storage snbt:temp {char:"L"} run function snbt:parse/next
execute unless data storage snbt:temp {char:"]"} run function snbt:display/values
function snbt:parse/next
data modify storage snbt:temp output append value '"]"'
scoreboard players remove depth snbt 1
