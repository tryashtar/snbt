data modify storage snbt:temp stack[-1].text append from storage snbt:temp peek
data modify storage snbt:temp stack[-1].text append from storage snbt:temp text[2]
data remove storage snbt:temp text[0]
data remove storage snbt:temp text[0]
execute if score pretty snbt matches 0 run return 0
data remove storage snbt:temp text[0]
