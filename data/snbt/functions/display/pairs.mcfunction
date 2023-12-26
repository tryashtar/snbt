# recursively append all key/value pairs in a compound to the output
execute store result score size snbt run data get storage snbt:temp size_stack[-1]
execute store result storage snbt:temp size_stack[-1] int 1 run scoreboard players add size snbt 1
scoreboard players operation tabs snbt = depth snbt
execute if score pretty snbt matches 1 run function snbt:display/tabs
function snbt:display/key

# write and skip colon
data modify storage snbt:temp output append value '": "'
function snbt:parse/next

function snbt:display/value
function snbt:parse/peek with storage snbt:temp context

# write and skip comma
execute if data storage snbt:temp {char:","} run function snbt:parse/next
execute if data storage snbt:temp {char:","} run data modify storage snbt:temp output append value '", "'
execute if data storage snbt:temp {char:","} if score pretty snbt matches 1 run data modify storage snbt:temp output append value '"\\n"'
execute if data storage snbt:temp {char:","} run function snbt:display/pairs
