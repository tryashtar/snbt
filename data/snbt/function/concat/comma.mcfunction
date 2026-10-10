execute if score pretty snbt matches 0 run return 0
data modify storage snbt:temp output append value "\n"
data modify storage snbt:temp output append from storage snbt:temp indent[]
data remove storage snbt:temp text[0]
