execute store result storage snbt:temp stack[-1].index int 1 run data get storage snbt:temp lookups
data modify storage snbt:temp lookups append from storage snbt:temp stack[-1].text
function snbt:walk/nest/add.macro with storage snbt:temp stack[-1]
data remove storage snbt:temp stack[-1]
execute if score pretty snbt matches 1 run data remove storage snbt:temp indent[-1]

data modify storage snbt:temp stack[-1].text append from storage snbt:temp token
data remove storage snbt:temp text[0]
execute if data storage snbt:temp text[0] run function snbt:walk/next
