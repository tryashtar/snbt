# append a compound and all its values to the output
# if we're collapsing values, switch to a different function instead
execute if score collapse snbt matches 1 if score depth snbt matches 1.. run return run function snbt:display/collapsed/list

# write and skip opening bracket
data modify storage snbt:temp output append value '"["'
function snbt:parse/next

# we need to check if this list is empty, and also remember it after processing child objects
# so form a stack to restore the value after processing
function snbt:parse/peek with storage snbt:temp context
execute store result storage snbt:temp size int 1 unless data storage snbt:temp {char:"]"}
data modify storage snbt:temp size_stack append from storage snbt:temp size

# write and skip array prefixes
execute if data storage snbt:temp {char:"I"} run data modify storage snbt:temp output append value '["",{"text":"I","color":"red"},"; "]'
execute if data storage snbt:temp {char:"I"} run function snbt:parse/next
execute if data storage snbt:temp {char:"I"} run function snbt:parse/next
execute if data storage snbt:temp {char:"B"} run data modify storage snbt:temp output append value '["",{"text":"I","color":"red"},"; "]'
execute if data storage snbt:temp {char:"B"} run function snbt:parse/next
execute if data storage snbt:temp {char:"B"} run function snbt:parse/next
execute if data storage snbt:temp {char:"L"} run data modify storage snbt:temp output append value '["",{"text":"I","color":"red"},"; "]'
execute if data storage snbt:temp {char:"L"} run function snbt:parse/next
execute if data storage snbt:temp {char:"L"} run function snbt:parse/next
execute if score pretty snbt matches 1 unless data storage snbt:temp {size:0} run data modify storage snbt:temp output append value '"\\n"'

# append values
scoreboard players add depth snbt 1
execute unless data storage snbt:temp {size:0} run function snbt:display/values
scoreboard players remove depth snbt 1

# restore empty status and indent appropriately
data modify storage snbt:temp size set from storage snbt:temp size_stack[-1]
data remove storage snbt:temp size_stack[-1]
execute if score pretty snbt matches 1 unless data storage snbt:temp {size:0} run data modify storage snbt:temp output append value '"\\n"'
scoreboard players operation tabs snbt = depth snbt
execute if score pretty snbt matches 1 unless data storage snbt:temp {size:0} if score tabs snbt matches 1.. run function snbt:display/tabs

# write and skip closing bracket
data modify storage snbt:temp output append value '"]"'
function snbt:parse/next
