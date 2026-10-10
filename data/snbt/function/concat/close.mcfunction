execute unless score collapse snbt matches 0 if data storage snbt:temp stack[2] run return run function snbt:concat/nest
data modify storage snbt:temp stack[-2] append from storage snbt:temp stack[-1]
data remove storage snbt:temp stack[-1]
execute if score pretty snbt matches 0 run return 0
data modify storage snbt:temp stack[-1] append value "\n"
data remove storage snbt:temp indent[-1]
data modify storage snbt:temp stack[-1] append from storage snbt:temp indent[]
