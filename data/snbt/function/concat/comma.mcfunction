execute if score pretty snbt matches 0 run return 0
data modify storage snbt:temp stack[-1] append value "\n"
data remove storage snbt:temp text[0]
data modify storage snbt:temp stack[-1] append from storage snbt:temp indent[]
